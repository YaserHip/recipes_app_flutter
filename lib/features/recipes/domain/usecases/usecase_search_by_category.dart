import 'package:dartz/dartz.dart';
import 'package:recipes_app_flutter/core/error/failures.dart';
import 'package:recipes_app_flutter/features/recipes/domain/entities/entities.dart';
import 'package:recipes_app_flutter/features/recipes/domain/repositories/repository_recipes.dart';

class UseCaseSearchByCategory {
  final RepositoryRecipes _repository;
  UseCaseSearchByCategory(this._repository);

  Future<Either<Failure, List<EntityMealPreview>>> call(
          String category) async =>
      await _repository.searchByCategory(category);
}
