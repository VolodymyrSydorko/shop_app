import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_app/models/auth/email.dart';
import 'package:shop_app/models/auth/password.dart';
import 'package:shop_app/models/auth/user_profile.dart';
import 'package:shop_app/services/api/user_repository.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({
    required this.userRepository,
  }) : super(const LoginState()) {
    on<EmailChanged>(_emailChanged);
    on<PasswordChanged>(_passwordChanged);
    on<FormSubmitted>(_formSubmitted);
  }

  final UserRepository userRepository;

  FutureOr<void> _emailChanged(EmailChanged event, Emitter<LoginState> emit) {
    final email = Email.dirty(event.email);

    emit(
      state.copyWith(
        email: email,
        status: Formz.validate([email, state.password]),
      ),
    );
  }

  FutureOr<void> _passwordChanged(
      PasswordChanged event, Emitter<LoginState> emit) {
    final password = Password.dirty(event.password);

    emit(
      state.copyWith(
        password: password,
        status: Formz.validate([state.email, password]),
      ),
    );
  }

  FutureOr<void> _formSubmitted(
      FormSubmitted event, Emitter<LoginState> emit) async {
    final email = Email.dirty(state.email.value);
    final password = Password.dirty(state.password.value);

    emit(
      state.copyWith(
        email: email,
        password: password,
        status: Formz.validate([email, password]),
      ),
    );

    if (state.status.isValidated) {
      emit(state.copyWith(status: FormzStatus.submissionInProgress));

      await login(email.value, password.value, emit);
    }
  }

  Future<void> login(
      String email, String password, Emitter<LoginState> emit) async {
    try {
      await userRepository.signInWithEmailAndPassword(email, password);

      if (userRepository.isSignedIn()) {
        final user = userRepository.getUser();
        final tokenInfo = await user?.getIdTokenResult();

        final profile = UserProfile(
          token: tokenInfo!.token!,
          userId: user!.uid,
          expiryDate: tokenInfo.expirationTime!,
        );

        emit(
          state.copyWith(
            status: FormzStatus.submissionSuccess,
            userProfile: profile,
          ),
        );
      } else {
        emit(state.copyWith(
            status: FormzStatus.submissionFailure, errorMessage: ''));
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(state.copyWith(
            status: FormzStatus.submissionFailure,
            errorMessage: 'Incorrect username or password.'));
      } else {
        emit(state.copyWith(
            status: FormzStatus.submissionFailure, errorMessage: ''));
      }
    } catch (e) {
      emit(state.copyWith(
          status: FormzStatus.submissionFailure, errorMessage: ''));
    }
  }
}
