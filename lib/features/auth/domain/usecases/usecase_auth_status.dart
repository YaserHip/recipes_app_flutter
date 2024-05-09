import 'package:dartz/dartz.dart';
import 'package:recipes_app_flutter/core/error/failures.dart';
import 'package:recipes_app_flutter/features/auth/domain/repositories/repository_auth.dart';

class UseCaseAuthStatus {
  final RepositoryAuth _repository;

  UseCaseAuthStatus(this._repository);

  Future<Either<Failure, int>> call() async =>
      await _repository.checkAuthStatus();
}
