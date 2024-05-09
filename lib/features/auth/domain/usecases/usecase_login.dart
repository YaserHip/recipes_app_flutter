import 'package:dartz/dartz.dart';
import 'package:recipes_app_flutter/features/auth/data/models/model_user.dart';
import 'package:recipes_app_flutter/features/auth/domain/repositories/repository_auth.dart';

import '../../../../core/error/failures.dart';

class UseCaseLogin {
  final RepositoryAuth _repository;

  UseCaseLogin(this._repository);

  Future<Either<Failure, ModelUser>> call(
          String email, String password) async =>
      await _repository.login(email, password);
}
