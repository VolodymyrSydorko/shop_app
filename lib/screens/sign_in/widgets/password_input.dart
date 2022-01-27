import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:formz/formz.dart';
import 'package:shop_app/blocs/login/login_bloc.dart';
import 'package:shop_app/widgets/app_form_item.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    Key? key,
    required this.focusNode,
    this.onFieldSubmitted,
  }) : super(key: key);

  final FocusNode focusNode;
  final Function(String value)? onFieldSubmitted;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return AppFormItem(
          label: 'Password',
          initialValue: state.password.value,
          labelIcon: FontAwesomeIcons.lock,
          enabled: state.status != FormzStatus.submissionInProgress,
          focusNode: focusNode,
          placeholder: 'Enter Your Password',
          keyboardType: TextInputType.visiblePassword,
          obscureText: true,
          textInputAction: TextInputAction.go,
          errorText:
              state.password.invalid ? 'Please enter a valid password' : null,
          onChanged: (value) {
            context.read<LoginBloc>().add(LoginEvent.passwordChanged(value));
          },
          onFieldSubmitted: onFieldSubmitted ??
              (_) {
                state.status.isValidated
                    ? context
                        .read<LoginBloc>()
                        .add(const LoginEvent.formSubmitted())
                    : null;
              },
        );
      },
    );
  }
}
