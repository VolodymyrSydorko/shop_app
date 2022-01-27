import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_app/models/auth/auth.dart';
import 'package:shop_app/services/services.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc({
    required this.userRepository,
  }) : super(const RegisterState()) {
    on<EmailChanged>(_emailChanged);
    on<EmailUnfocused>(_emailUnfocused);
    on<PasswordChanged>(_passwordChanged);
    on<PasswordUnfocused>(_passwordUnfocused);
    on<FormSubmitted>(_formSubmitted);
  }

  final UserRepository userRepository;

  FutureOr<void> _emailChanged(
      EmailChanged event, Emitter<RegisterState> emit) {
    final email = Email.dirty(event.email);

    emit(
      state.copyWith(
        email: email,
        status: Formz.validate([email, state.password]),
      ),
    );
  }

  FutureOr<void> _emailUnfocused(
      EmailUnfocused event, Emitter<RegisterState> emit) {
    final email = Email.dirty(state.email.value);

    emit(
      state.copyWith(
        email: email,
        status: Formz.validate([email, state.password]),
      ),
    );
  }

  FutureOr<void> _passwordChanged(
      PasswordChanged event, Emitter<RegisterState> emit) {
    final password = Password.dirty(event.password);

    emit(
      state.copyWith(
        password: password,
        status: Formz.validate([state.email, password]),
      ),
    );
  }

  FutureOr<void> _passwordUnfocused(
      PasswordUnfocused event, Emitter<RegisterState> emit) {
    final password = Password.dirty(state.password.value);

    emit(
      state.copyWith(
        password: password,
        status: Formz.validate([state.email, password]),
      ),
    );
  }

  FutureOr<void> _formSubmitted(
      FormSubmitted event, Emitter<RegisterState> emit) async {
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

      await register(email.value, password.value, emit);

      emit(state.copyWith(status: FormzStatus.submissionSuccess));
    }
  }

  Future<void> register(
      String email, String password, Emitter<RegisterState> emit) async {
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
        emit(state.copyWith(status: FormzStatus.submissionFailure));
      }
    } catch (e) {
      emit(state.copyWith(status: FormzStatus.submissionFailure));
    }
  }
}
