import 'package:dartz/dartz.dart';
import 'package:recipes_app_flutter/features/auth/data/models/model_user.dart';

import '../../../../core/error/failures.dart';

abstract mixin class RepositoryAuth {
  Future<Either<Failure, void>> register(
      String name, String email, String password);

  Future<Either<Failure, ModelUser>> login(String email, String password);

  Future<Either<Failure, bool>> logout();

  Future<Either<Failure, int>> checkAuthStatus();

  Future<Either<Failure, ModelUser>> getUser();
}
