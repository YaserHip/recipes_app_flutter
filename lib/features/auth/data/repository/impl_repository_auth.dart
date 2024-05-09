import 'package:dartz/dartz.dart';
import 'package:recipes_app_flutter/core/error/exceptions.dart';
import 'package:recipes_app_flutter/core/error/failures.dart';
import 'package:recipes_app_flutter/core/helper_shared_pref.dart';
import 'package:recipes_app_flutter/features/auth/data/datasource/datasource_local_auth.dart';
import 'package:recipes_app_flutter/features/auth/data/models/model_user.dart';
import 'package:recipes_app_flutter/features/auth/domain/repositories/repository_auth.dart';

class ImplRepositoryAuth implements RepositoryAuth {
  final DataSourceLocalAuth dataSource;
  final HelperSharedPref sharedPref;

  ImplRepositoryAuth({required this.dataSource, required this.sharedPref});

  @override
  Future<Either<Failure, int>> checkAuthStatus() async {
    final userID = sharedPref.getUserInfo();
    if (userID != null) {
      return Right(userID);
    } else {
      return const Left(NotUserLoggedIn());
    }
  }

  @override
  Future<Either<Failure, ModelUser>> login(
      String email, String password) async {
    try {
      final response = await dataSource.login(email, password);
      await sharedPref.setUserInfo(response.id);
      return Right(response);
    } on UserNotFoundException {
      return const Left(UserNotFoundFailure());
    } on DataParsingException {
      return const Left(DataParsingFailure());
    }
  }

  @override
  Future<Either<Failure, bool>> logout() async {
    return Right(await sharedPref.removeUserInfo());
  }

  @override
  Future<Either<Failure, void>> register(
      String name, String email, String password) async {
    try {
      final response = await dataSource.register(name, email, password);
      return Right(response);
    } on AlreadyRegisteredException {
      return const Left(AlreadyRegisteredFailure());
    }
  }

  @override
  Future<Either<Failure, ModelUser>> getUser() async {
    final userID = sharedPref.getUserInfo();
    try {
      final response = await dataSource.getUser(userID);
      return Right(response);
    } on UserDoNotExistException {
      return const Left(UserDoNotExistFailure());
    } on DataParsingException {
      return const Left(DataParsingFailure());
    }
  }
}
