part of 'cubit_user.dart';

sealed class StateUser {}

class StateUserLogout extends StateUser {}

class StateUserInitial extends StateUser {}

class StateUserLoading extends StateUser {}

class StateUserLoaded extends StateUser {
  final ModelUser data;

  StateUserLoaded(this.data);
}

class StateUserError extends StateUser {
  final String message;

  StateUserError(this.message);
}
