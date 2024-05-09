import 'package:dartz/dartz.dart';
import 'package:recipes_app_flutter/core/error/failures.dart';
import 'package:recipes_app_flutter/features/auth/data/models/model_user.dart';
import 'package:recipes_app_flutter/features/auth/domain/repositories/repository_auth.dart';

class UseCaseUser {
  final RepositoryAuth _repository;

  UseCaseUser(this._repository);

  Future<Either<Failure, ModelUser>> call() async =>
      await _repository.getUser();
}
