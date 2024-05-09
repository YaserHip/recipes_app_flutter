import 'package:dartz/dartz.dart';
import 'package:recipes_app_flutter/core/error/failures.dart';
import 'package:recipes_app_flutter/features/recipes/domain/entities/entities.dart';
import 'package:recipes_app_flutter/features/recipes/domain/repositories/repository_recipes.dart';

class UseCaseSearchByName {
  final RepositoryRecipes _repository;
  UseCaseSearchByName(this._repository);

  Future<Either<Failure, List<EntityMealPreview>>> call(String name) =>
      _repository.searchByName(name);
}
