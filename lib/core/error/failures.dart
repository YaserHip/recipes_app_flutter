import 'package:equatable/equatable.dart';

sealed class Failure extends Equatable {
  final String code;
  final String message;

  const Failure(this.code, this.message);

  @override
  List<Object> get props => [code, message];
}

class ServerFailure extends Failure {
  const ServerFailure() : super('SERVER_FAILURE', 'Error from server');
}

class NoConnectionFailureOr404 extends Failure {
  const NoConnectionFailureOr404()
      : super('NO_CONNECTION', 'No Connection Available.');
}

class LocalDataFailure extends Failure {
  const LocalDataFailure()
      : super('LOCAL_DATA', 'Local data not available or parsed correctly.');
}

class DataParsingFailure extends Failure {
  const DataParsingFailure() : super('DATA_PARSING', 'DataParsingFailure');
}

class AlreadyRegisteredFailure extends Failure {
  const AlreadyRegisteredFailure()
      : super('ALREDY_REGISTERED', 'This e-mail is not available.');
}

class UserNotFoundFailure extends Failure {
  const UserNotFoundFailure()
      : super('USER_NOT_FOUND', 'The e-mail or password is incorrect');
}

class NotUserLoggedIn extends Failure {
  const NotUserLoggedIn() : super('NOT_LOGGED_IN', 'USER_NOT_LOGGED_IN');
}

class UserDoNotExistFailure extends Failure {
  const UserDoNotExistFailure()
      : super('USER_DO_NOT_EXIST', 'This user do not exist.');
}

class FavoriteAlreadySavedFailure extends Failure {
  const FavoriteAlreadySavedFailure()
      : super('FAVORITE_ALREADY_SAVED', 'This meal is already saved.');
}
