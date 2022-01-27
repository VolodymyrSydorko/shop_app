import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:shop_app/blocs/login/login_bloc.dart';
import 'package:shop_app/widgets/buttons/custom_material_button.dart';

class LoginSubmitButton extends StatelessWidget {
  const LoginSubmitButton({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return Container(
          width: double.infinity,
          height: 36,
          margin: const EdgeInsets.only(bottom: 10),
          child: CustomMaterialButton(
              height: 36,
              child: state.status == FormzStatus.submissionInProgress
                  ? const SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                        strokeWidth: 2,
                      ),
                    )
                  : const Text(
                      'Sign in',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
              onPressed: onPressed),
        );
      },
    );
  }
}
