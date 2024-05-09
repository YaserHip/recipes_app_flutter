import 'package:dartz/dartz.dart';
import 'package:recipes_app_flutter/core/error/failures.dart';
import 'package:recipes_app_flutter/features/auth/domain/repositories/repository_auth.dart';

class UseCaseLogout {
  final RepositoryAuth _repository;

  UseCaseLogout(this._repository);

  Future<Either<Failure, bool>> call() async => _repository.logout();
}
