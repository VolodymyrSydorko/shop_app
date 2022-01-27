import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:formz/formz.dart';
import 'package:shop_app/blocs/login/login_bloc.dart';
import 'package:shop_app/widgets/app_form_item.dart';

class EmailInput extends StatelessWidget {
  const EmailInput({
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
          label: 'Email',
          initialValue: state.email.value,
          labelIcon: FontAwesomeIcons.solidEnvelope,
          enabled: state.status != FormzStatus.submissionInProgress,
          focusNode: focusNode,
          placeholder: 'Enter Your Email',
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.emailAddress,
          errorText: state.email.invalid ? 'Please enter a valid email' : null,
          onChanged: (value) {
            context.read<LoginBloc>().add(LoginEvent.emailChanged(value));
          },
          onFieldSubmitted: onFieldSubmitted,
        );
      },
    );
  }
}
