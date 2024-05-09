import 'package:dartz/dartz.dart';
import 'package:recipes_app_flutter/core/error/failures.dart';
import 'package:recipes_app_flutter/features/recipes/domain/entities/entities.dart';

abstract mixin class RepositoryRecipes {
  Future<Either<Failure, List<EntityMealDetails>>> getSevenRandomMeals();
  Future<Either<Failure, List<EntityMealCategory>>> getCategories();
  Future<Either<Failure, EntityMealDetails>> getMealById(String id);
  Future<Either<Failure, List<EntityMealPreview>>> searchByName(String name);
  Future<Either<Failure, List<EntityMealPreview>>> searchByCategory(
      String category);
}
