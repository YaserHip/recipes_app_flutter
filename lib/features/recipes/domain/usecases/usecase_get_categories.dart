import 'package:dartz/dartz.dart';
import 'package:recipes_app_flutter/core/error/failures.dart';
import 'package:recipes_app_flutter/features/recipes/domain/entities/entities.dart';
import 'package:recipes_app_flutter/features/recipes/domain/repositories/repository_recipes.dart';

class UseCaseGetCategories {
  final RepositoryRecipes _repository;
  UseCaseGetCategories(this._repository);

  Future<Either<Failure, List<EntityMealCategory>>> call() async =>
      await _repository.getCategories();
}
