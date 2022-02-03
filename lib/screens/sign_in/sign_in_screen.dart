import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:shop_app/blocs/authentication/authentication_bloc.dart';
import 'package:shop_app/blocs/login/login_bloc.dart';
import 'package:shop_app/router/router.gr.dart';
import 'package:shop_app/screens/sign_in/widgets/email_input.dart';
import 'package:shop_app/screens/sign_in/widgets/password_input.dart';
import 'package:shop_app/screens/sign_in/widgets/submit_button.dart';
import 'package:shop_app/services/services.dart';
import 'package:shop_app/styles/colors.dart';
import 'package:shop_app/widgets/app_bar/custom_app_bar.dart';
import 'package:shop_app/widgets/buttons/socal_card.dart';
import 'package:shop_app/widgets/no_account_text.dart';

class SignInScreen extends StatelessWidget implements AutoRouteWrapper {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    final userRepository = getIt.get<UserRepository>();

    return BlocProvider(
      create: (context) => LoginBloc(userRepository: userRepository),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    final customBackAppBar = CustomBackAppBar();
    final screenHeight = deviceSize.height -
        (customBackAppBar.preferredSize.height +
            MediaQuery.of(context).padding.top +
            kToolbarHeight);

    return Scaffold(
      appBar: customBackAppBar,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: customBackAppBar.preferredSize.height),
          child: SizedBox(
            height: screenHeight,
            width: deviceSize.width,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Positioned(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(bottom: 20.0),
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 94.0),
                        transform: Matrix4.rotationZ(-8 * pi / 180)
                          ..translate(-10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.primary,
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
                      const AuthCard(),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 20.0,
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SocalCard(
                              'assets/icons/google-icon.svg',
                              onTap: () {},
                            ),
                            SocalCard(
                              'assets/icons/facebook-icon.svg',
                              onTap: () {},
                            ),
                            SocalCard(
                              'assets/icons/twitter-icon.svg',
                              onTap: () {},
                            ),
                          ],
                        ),
                        const SizedBox(height: 40),
                        const NoAccountText(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
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
  final _emailFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();

  Future _showErrorDialog(String message) {
    return showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('An Error Occurred!'),
        content: Text(message),
        actions: <Widget>[
          TextButton(
            child: const Text('Ok'),
            onPressed: () {
              context.router.pop();
            },
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) async {
        if (state.status == FormzStatus.submissionFailure &&
            state.errorMessage != null) {
          await _showErrorDialog(state.errorMessage!);
        } else if (state.status == FormzStatus.submissionSuccess) {
          context
              .read<AuthenticationBloc>()
              .add(AuthenticationEvent.loggedIn(state.userProfile!));
        }
      },
      child: SingleChildScrollView(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 8.0,
          child: Container(
            height: 280,
            width: deviceSize.width * 0.75,
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                EmailInput(
                  focusNode: _emailFocusNode,
                  onFieldSubmitted: (_) {
                    FocusScope.of(context).requestFocus(_passwordFocusNode);
                  },
                ),
                PasswordInput(focusNode: _passwordFocusNode),
                const SizedBox(
                  height: 20,
                ),
                LoginSubmitButton(onPressed: () {
                  context
                      .read<LoginBloc>()
                      .add(const LoginEvent.formSubmitted());
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
