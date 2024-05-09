import 'package:dartz/dartz.dart';
import 'package:recipes_app_flutter/core/error/failures.dart';
import 'package:recipes_app_flutter/features/recipes/domain/entities/entities.dart';
import 'package:recipes_app_flutter/features/recipes/domain/repositories/repository_recipes.dart';

class UseCaseGetSevenRandomMeals {
  final RepositoryRecipes _repository;
  UseCaseGetSevenRandomMeals(this._repository);

  Future<Either<Failure, List<EntityMealDetails>>> call() async =>
      await _repository.getSevenRandomMeals();
}
