import 'package:dartz/dartz.dart';
import 'package:recipes_app_flutter/core/error/failures.dart';
import 'package:recipes_app_flutter/features/auth/domain/repositories/repository_auth.dart';

class UseCaseRegister {
  final RepositoryAuth _repository;

  UseCaseRegister(this._repository);

  Future<Either<Failure, void>> call(
          String name, String email, String password) async =>
      await _repository.register(name, email, password);
}
