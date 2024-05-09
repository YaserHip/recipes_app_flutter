part of 'cubit_register.dart';

sealed class StateRegister {}

class StateRegisterInitial extends StateRegister {}

class StateRegisterLoading extends StateRegister {}

class StateRegisterLoaded extends StateRegister {}

class StateRegisterError extends StateRegister {
  final String message;

  StateRegisterError({required this.message});
}
