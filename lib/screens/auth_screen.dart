import 'dart:math';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/widgets/app_form_item.dart';

import '../providers/auth.dart';

enum AuthMode { signup, login }

class AuthScreen extends StatelessWidget {
  static const routeName = '/auth';

  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color.fromRGBO(215, 117, 255, 1).withOpacity(0.5),
                    const Color.fromRGBO(255, 188, 117, 1).withOpacity(0.9),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: const [0, 1],
                ),
              ),
            ),
            SizedBox(
              height: deviceSize.height,
              width: deviceSize.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Flexible(
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 20.0),
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 94.0),
                      transform: Matrix4.rotationZ(-8 * pi / 180)
                        ..translate(-10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.deepOrange.shade900,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 8,
                            color: Colors.black26,
                            offset: Offset(0, 2),
                          )
                        ],
                      ),
                      child: const Text(
                        'MyShop',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 50,
                          fontFamily: 'Anton',
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: deviceSize.width > 600 ? 2 : 1,
                    child: const AuthCard(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AuthCard extends StatefulWidget {
  const AuthCard({
    Key? key,
  }) : super(key: key);

  @override
  _AuthCardState createState() => _AuthCardState();
}

class _AuthCardState extends State<AuthCard> {
  AuthMode _authMode = AuthMode.login;
  final _scrollController = ScrollController();
  final _loginFormRef = GlobalKey<FormState>();

  final Map<String, String> _authData = {
    'email': '',
    'password': '',
  };

  final _emailFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();
  final _emailFieldKey = GlobalKey<FormFieldState>();
  final _passwordFieldKey = GlobalKey<FormFieldState>();

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('An Error Occurred!'),
        content: Text(message),
        actions: <Widget>[
          TextButton(
            child: const Text('Ok'),
            onPressed: () {
              Navigator.of(ctx).pop();
            },
          )
        ],
      ),
    );
  }

  void _animateToLoginButton() async {
    await Future.delayed(const Duration(milliseconds: 100));
    _scrollController.animateTo(
      100,
      curve: Curves.easeOut,
      duration: const Duration(milliseconds: 200),
    );
  }

  @override
  void initState() {
    super.initState();
    _emailFocusNode.addListener(() async {
      if (!_emailFocusNode.hasFocus) {
        _emailFieldKey.currentState?.validate();
      } else {
        _animateToLoginButton();
      }
    });
    _passwordFocusNode.addListener(() async {
      if (!_passwordFocusNode.hasFocus) {
        _passwordFieldKey.currentState?.validate();
      } else {
        _animateToLoginButton();
      }
    });
  }

  @override
  void dispose() {
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  void _login() async {
    final isValid = _loginFormRef.currentState?.validate();

    if (isValid == true) {
      _loginFormRef.currentState?.save();

      try {
        if (_authMode == AuthMode.login) {
          await context
              .read<Auth>()
              .authentication(_authData['email']!, _authData['password']!);
        } else {
          await context
              .read<Auth>()
              .signUp(_authData['email']!, _authData['password']!);
        }
      } catch (e) {
        _showErrorDialog(e.toString());
      }
    }
  }

  void _switchAuthMode() {
    if (_authMode == AuthMode.login) {
      setState(() {
        _authMode = AuthMode.signup;
      });
    } else {
      setState(() {
        _authMode = AuthMode.login;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    final isLoading = context.watch<Auth>().isLoading;

    return SingleChildScrollView(
      controller: _scrollController,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 8.0,
        child: Container(
          height: 320,
          width: deviceSize.width * 0.75,
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _loginFormRef,
            child: Column(
              children: [
                AppFormItem(
                  key: _emailFieldKey,
                  label: 'Email',
                  initialValue: 'volodymyrsydorko@gmail.com',
                  labelIcon: FontAwesomeIcons.solidEnvelope,
                  enabled: !isLoading,
                  focusNode: _emailFocusNode,
                  placeholder: 'Enter Your Email',
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value!.isNotEmpty) {
                      return EmailValidator.validate(value)
                          ? null
                          : 'Please enter a valid email';
                    } else {
                      return 'Email is required';
                    }
                  },
                  onFieldSubmitted: (_) {
                    FocusScope.of(context).requestFocus(_passwordFocusNode);
                  },
                  onSaved: (value) {
                    _authData['email'] = value ?? '';
                  },
                ),
                AppFormItem(
                  key: _passwordFieldKey,
                  label: 'Password',
                  initialValue: 'qwerty123',
                  labelIcon: FontAwesomeIcons.lock,
                  enabled: !isLoading,
                  focusNode: _passwordFocusNode,
                  placeholder: 'Enter Your Password',
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  textInputAction: TextInputAction.go,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Password is required';
                    } else if (value.length <= 8) {
                      return 'Password is too short';
                    } else {
                      return null;
                    }
                  },
                  onFieldSubmitted: (_) => _login(),
                  onSaved: (value) {
                    _authData['password'] = value ?? '';
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 36,
                  margin: const EdgeInsets.only(bottom: 10),
                  child: MaterialButton(
                    color: Colors.red,
                    disabledColor: const Color.fromRGBO(29, 129, 207, 1),
                    padding: EdgeInsets.zero,
                    child: isLoading
                        ? const SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(
                              valueColor:
                                  AlwaysStoppedAnimation<Color>(Colors.white),
                              strokeWidth: 2,
                            ),
                          )
                        : const Text(
                            'Login',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                    onPressed: isLoading ? null : _login,
                  ),
                ),
                TextButton(
                  child: Text(
                      '${_authMode == AuthMode.login ? 'SIGNUP' : 'LOGIN'} INSTEAD'),
                  onPressed: _switchAuthMode,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
