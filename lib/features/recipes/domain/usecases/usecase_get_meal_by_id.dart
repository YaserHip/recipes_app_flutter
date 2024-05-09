import 'package:dartz/dartz.dart';
import 'package:recipes_app_flutter/core/error/failures.dart';
import 'package:recipes_app_flutter/features/recipes/domain/entities/entities.dart';
import 'package:recipes_app_flutter/features/recipes/domain/repositories/repository_recipes.dart';

class UseCaseGetMealById {
  final RepositoryRecipes _repository;
  UseCaseGetMealById(this._repository);

  Future<Either<Failure, EntityMealDetails>> call(String id) async =>
      await _repository.getMealById(id);
}
