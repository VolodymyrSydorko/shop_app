import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shop_app/styles/colors.dart';

class AppFormItem extends FormField<String> {
  final TextEditingController? controller;
  final String? label;
  final IconData? labelIcon;
  final String? errorText;

  AppFormItem({
    Key? key,
    this.controller,
    this.label,
    this.labelIcon,
    this.errorText,
    String? initialValue,
    FocusNode? focusNode,
    TextInputType? keyboardType,
    TextInputAction? textInputAction,
    bool obscureText = false,
    EdgeInsetsGeometry? padding =
        const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
    bool autofocus = false,
    bool readOnly = false,
    ValueChanged<String>? onChanged,
    GestureTapCallback? onTap,
    VoidCallback? onEditingComplete,
    ValueChanged<String>? onFieldSubmitted,
    FormFieldSetter<String>? onSaved,
    FormFieldValidator<String>? validator,
    bool? enabled,
    AutovalidateMode autovalidateMode = AutovalidateMode.disabled,
    String? placeholder,
  })  : assert(initialValue == null || controller == null),
        super(
          key: key,
          initialValue: controller?.text ?? initialValue ?? '',
          onSaved: onSaved,
          validator: validator,
          autovalidateMode: autovalidateMode,
          builder: (FormFieldState<String> field) {
            final _AppFormItemState state = field as _AppFormItemState;

            void onChangedHandler(String value) {
              field.didChange(value);
              if (onChanged != null) {
                onChanged(value);
              }
            }

            return Container(
              margin: const EdgeInsets.only(bottom: 10),
              height: label != null && label.isNotEmpty ? 80 : 60,
              child: Stack(children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (label != null && label.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            if (labelIcon != null)
                              Container(
                                margin:
                                    const EdgeInsets.only(right: 5, bottom: 2),
                                child: FaIcon(
                                  labelIcon,
                                  size: 12,
                                  color: AppColors.textSecondary,
                                ),
                              ),
                            Text(
                              label,
                              style: const TextStyle(
                                color: AppColors.textSecondary,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    Flexible(
                      flex: 1,
                      child: CupertinoTextField(
                        controller: state._effectiveController,
                        focusNode: focusNode,
                        keyboardType: keyboardType,
                        textInputAction: textInputAction,
                        obscureText: obscureText,
                        clearButtonMode: OverlayVisibilityMode.editing,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: errorText != null
                                    ? AppColors.danger
                                    : AppColors.border),
                            borderRadius: BorderRadius.circular(5)),
                        padding: padding!,
                        onChanged: onChangedHandler,
                        onTap: onTap,
                        onEditingComplete: onEditingComplete,
                        onSubmitted: onFieldSubmitted,
                        enabled: enabled,
                        placeholder: placeholder,
                        style: const TextStyle(fontSize: 14),
                        placeholderStyle: const TextStyle(
                            fontSize: 14, color: AppColors.greyDark),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  left: 2,
                  bottom: 0,
                  child: Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: AnimatedOpacity(
                        duration: const Duration(seconds: 5),
                        opacity: 1,
                        child: Text(
                          errorText ?? '',
                          style: const TextStyle(
                              color: CupertinoColors.destructiveRed,
                              fontSize: 13),
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
            );
          },
        );

  @override
  FormFieldState<String> createState() => _AppFormItemState();
}

class _AppFormItemState extends FormFieldState<String> {
  TextEditingController? _controller;

  TextEditingController? get _effectiveController =>
      widget.controller ?? _controller;

  @override
  AppFormItem get widget => super.widget as AppFormItem;

  @override
  void initState() {
    super.initState();
    if (widget.controller == null) {
      _controller = TextEditingController(text: widget.initialValue);
    } else {
      widget.controller!.addListener(_handleControllerChanged);
    }
  }

  @override
  void didUpdateWidget(AppFormItem oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.controller != oldWidget.controller) {
      oldWidget.controller?.removeListener(_handleControllerChanged);
      widget.controller?.addListener(_handleControllerChanged);

      if (oldWidget.controller != null && widget.controller == null) {
        _controller =
            TextEditingController.fromValue(oldWidget.controller!.value);
      }

      if (widget.controller != null) {
        setValue(widget.controller!.text);
        if (oldWidget.controller == null) {
          _controller = null;
        }
      }
    }
  }

  @override
  void dispose() {
    widget.controller?.removeListener(_handleControllerChanged);
    super.dispose();
  }

  @override
  void didChange(String? value) {
    super.didChange(value);

    if (value != null && _effectiveController!.text != value) {
      _effectiveController!.text = value;
    }
  }

  @override
  void reset() {
    super.reset();

    if (widget.initialValue != null) {
      setState(() {
        _effectiveController!.text = widget.initialValue!;
      });
    }
  }

  void _handleControllerChanged() {
    if (_effectiveController!.text != value) {
      didChange(_effectiveController!.text);
    }
  }
}
