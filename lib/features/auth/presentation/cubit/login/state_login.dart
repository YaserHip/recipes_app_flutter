part of 'cubit_login.dart';

sealed class StateLogin {}

class StateLoginInitial extends StateLogin {}

class StateLoginLoading extends StateLogin {}

class StateLoginLoaded extends StateLogin {
  final ModelUser data;

  StateLoginLoaded({required this.data});
}

class StateLoginError extends StateLogin {
  final String message;

  StateLoginError({required this.message});
}
