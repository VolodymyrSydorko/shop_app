import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shop_app/blocs/user_products/user_products_bloc.dart';

import '../../models/product.dart';

class EditProductScreen extends StatefulWidget {
  final String? productId;

  const EditProductScreen({
    Key? key,
    @PathParam() this.productId,
  }) : super(key: key);

  @override
  _EditProductScreenState createState() => _EditProductScreenState();
}

class _EditProductScreenState extends State<EditProductScreen> {
  var _editedProduct = Product(
    id: '',
    title: 'test product',
    price: 1,
    category: Category.none,
    description: 'description',
    imagePath:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
  );

  final _priceFocusNode = FocusNode();
  final _descriptionFocusNode = FocusNode();
  final _imageUrlController = TextEditingController(
      text:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg');
  final _imageUrlFocusNode = FocusNode();
  final _form = GlobalKey<FormState>();

  var _isInit = true;

  final _imagePicker = ImagePicker();

  @override
  void initState() {
    _imageUrlFocusNode.addListener(_updateImageUrl);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (_isInit) {
      if (widget.productId != null) {
        _editedProduct =
            context.read<UserProductsBloc>().findById(widget.productId!);
        _imageUrlController.text = _editedProduct.imagePath;
      }
    }

    _isInit = false;
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _imageUrlFocusNode.removeListener(_updateImageUrl);
    _priceFocusNode.dispose();
    _descriptionFocusNode.dispose();
    _imageUrlController.dispose();
    _imageUrlFocusNode.dispose();
    super.dispose();
  }

  void _updateImageUrl() {
    if (!_imageUrlFocusNode.hasFocus) {
      if ((!_imageUrlController.text.startsWith('http') &&
              !_imageUrlController.text.startsWith('https')) ||
          (!_imageUrlController.text.endsWith('.png') &&
              !_imageUrlController.text.endsWith('.jpg') &&
              !_imageUrlController.text.endsWith('.jpeg'))) {
        return;
      }
      setState(() {});
    }
  }

  void _saveForm() {
    final isValid = _form.currentState!.validate();
    if (!isValid) {
      return;
    }
    _form.currentState!.save();

    if (_editedProduct.id.isNotEmpty) {
      context.read<UserProductsBloc>().add(
          UserProductsEvent.editProduct(_editedProduct.id, _editedProduct));
    } else {
      context
          .read<UserProductsBloc>()
          .add(UserProductsEvent.addProduct(_editedProduct));
    }

    context.router.pop();
  }

  void _uploadImageFromGallery() async {
    final image = await _imagePicker.pickImage(
        source: ImageSource.gallery, imageQuality: 50);

    if (image != null) {
      final base64Url = base64Encode(await image.readAsBytes());

      setState(() {
        _editedProduct = _editedProduct.copyWith.base64Url(base64Url);
        _imageUrlController.text = image.name;
      });
    }
  }

  void _uploadImageFromCamera() async {
    final image = await _imagePicker.pickImage(
        source: ImageSource.camera, imageQuality: 50);

    if (image != null) {
      final base64Url = base64Encode(await image.readAsBytes());

      setState(() {
        _editedProduct = _editedProduct.copyWith.base64Url(base64Url);
        _imageUrlController.text = image.name;
      });
    }
  }

  void _showPicker() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Wrap(
              children: <Widget>[
                ListTile(
                    leading: const Icon(Icons.photo_library),
                    title: const Text('Photo Library'),
                    onTap: () {
                      _uploadImageFromGallery();
                      context.router.pop();
                    }),
                ListTile(
                  leading: const Icon(Icons.photo_camera),
                  title: const Text('Camera'),
                  onTap: () {
                    _uploadImageFromCamera();
                    context.router.pop();
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.cancel),
                  title: const Text('Cancel'),
                  onTap: () {
                    context.router.pop();
                  },
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Product'),
        actions: <Widget>[
          MaterialButton(
            minWidth: 40,
            textColor: Colors.white,
            onPressed: _showPicker,
            child: const Icon(Icons.upload),
          ),
          BlocBuilder<UserProductsBloc, UserProductsState>(
            builder: (context, state) {
              return MaterialButton(
                minWidth: 40,
                textColor: Colors.white,
                onPressed: _saveForm,
                child: const Icon(Icons.save),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _form,
          child: ListView(
            children: <Widget>[
              TextFormField(
                  initialValue: _editedProduct.title,
                  decoration: const InputDecoration(labelText: 'Title'),
                  textInputAction: TextInputAction.next,
                  onFieldSubmitted: (_) {
                    FocusScope.of(context).requestFocus(_priceFocusNode);
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please provide a value.';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _editedProduct = _editedProduct.copyWith.title(value!);
                  }),
              TextFormField(
                  initialValue: _editedProduct.price.toString(),
                  decoration: const InputDecoration(labelText: 'Price'),
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                  focusNode: _priceFocusNode,
                  onFieldSubmitted: (_) {
                    FocusScope.of(context).requestFocus(_descriptionFocusNode);
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter a price.';
                    }
                    if (double.tryParse(value) == null) {
                      return 'Please enter a valid number.';
                    }
                    if (double.parse(value) <= 0) {
                      return 'Please enter a number greater than zero.';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _editedProduct =
                        _editedProduct.copyWith.price(double.parse(value!));
                  }),
              TextFormField(
                initialValue: _editedProduct.description,
                decoration: const InputDecoration(labelText: 'Description'),
                maxLines: 3,
                keyboardType: TextInputType.multiline,
                focusNode: _descriptionFocusNode,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a description.';
                  }
                  if (value.length < 10) {
                    return 'Should be at least 10 characters long.';
                  }
                  return null;
                },
                onSaved: (value) {
                  _editedProduct = _editedProduct.copyWith.description(value!);
                },
              ),
              DropdownButton(
                isExpanded: true,
                value: _editedProduct.category,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: Category.values.map((Category item) {
                  return DropdownMenuItem(
                    value: item,
                    child: Text(item.name),
                  );
                }).toList(),
                onChanged: (Category? newValue) {
                  setState(() {
                    _editedProduct =
                        _editedProduct.copyWith.category(newValue!);
                  });
                },
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    margin: const EdgeInsets.only(
                      top: 8,
                      right: 10,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.grey,
                      ),
                    ),
                    child: _imageUrlController.text.isEmpty
                        ? const Text('Enter a URL')
                        : FittedBox(
                            child: _editedProduct.base64Url == null
                                ? Image.network(
                                    _editedProduct.imagePath,
                                    fit: BoxFit.cover,
                                    errorBuilder: (context, error,
                                            stackTrace) =>
                                        const Icon(Icons.camera_alt_outlined),
                                  )
                                : Image.memory(
                                    base64Decode(_editedProduct.base64Url!),
                                    fit: BoxFit.cover,
                                    errorBuilder: (context, error,
                                            stackTrace) =>
                                        const Icon(Icons.camera_alt_outlined),
                                  ),
                          ),
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(labelText: 'Image URL'),
                      keyboardType: TextInputType.url,
                      textInputAction: TextInputAction.done,
                      controller: _imageUrlController,
                      focusNode: _imageUrlFocusNode,
                      onFieldSubmitted: (_) {
                        _saveForm();
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter an image URL.';
                        }
                        if (!value.endsWith('.png') &&
                            !value.endsWith('.jpg') &&
                            !value.endsWith('.jpeg')) {
                          return 'Please enter a valid image URL.';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _editedProduct =
                            _editedProduct.copyWith.imagePath(value!);
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
