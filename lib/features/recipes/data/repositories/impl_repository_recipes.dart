import 'package:dartz/dartz.dart';
import 'package:recipes_app_flutter/core/error/exceptions.dart';
import 'package:recipes_app_flutter/core/error/failures.dart';
import 'package:recipes_app_flutter/core/util/mappers.dart';
import 'package:recipes_app_flutter/features/recipes/data/datasource/datasource_remote_recipes.dart';
import 'package:recipes_app_flutter/features/recipes/domain/entities/entities.dart';
import 'package:recipes_app_flutter/features/recipes/domain/repositories/repository_recipes.dart';

class ImplRepositoryRecipes implements RepositoryRecipes {
  final DataSourceRemoteRecipes dataSource;

  ImplRepositoryRecipes({required this.dataSource});

  @override
  Future<Either<Failure, List<EntityMealPreview>>> searchByCategory(
      String categoryName) async {
    try {
      final response = await dataSource.searchByCategory(categoryName);
      return Right(response.meals!.map((e) => e.toEntity()).toList());
    } on ServerException {
      return const Left(ServerFailure());
    } on DataParsingException {
      return const Left(DataParsingFailure());
    } on NoConectionExceptionOr404 {
      return const Left(NoConnectionFailureOr404());
    }
  }

  @override
  Future<Either<Failure, List<EntityMealCategory>>> getCategories() async {
    try {
      final response = await dataSource.getCategories();
      return Right(response.categories!.map((e) => e.toEntity()).toList());
    } on ServerException {
      return const Left(ServerFailure());
    } on DataParsingException {
      return const Left(DataParsingFailure());
    } on NoConectionExceptionOr404 {
      return const Left(NoConnectionFailureOr404());
    }
  }

  @override
  Future<Either<Failure, EntityMealDetails>> getMealById(String id) async {
    try {
      final response = await dataSource.getMealById(id);
      return Right(response.toEntity());
    } on ServerException {
      return const Left(ServerFailure());
    } on DataParsingException {
      return const Left(DataParsingFailure());
    } on NoConectionExceptionOr404 {
      return const Left(NoConnectionFailureOr404());
    }
  }

  @override
  Future<Either<Failure, List<EntityMealDetails>>> getSevenRandomMeals() async {
    try {
      List<EntityMealDetails> sevenRandomMeals = [];

      for (int i = 0; i < 7; i++) {
        final response = await dataSource.getRandomMeal();
        sevenRandomMeals.add(response.toEntity());
      }

      return Right(sevenRandomMeals);
    } on ServerException {
      return const Left(ServerFailure());
    } on DataParsingException {
      return const Left(DataParsingFailure());
    } on NoConectionExceptionOr404 {
      return const Left(NoConnectionFailureOr404());
    }
  }

  @override
  Future<Either<Failure, List<EntityMealPreview>>> searchByName(
      String name) async {
    try {
      final response = await dataSource.searchByName(name);
      return Right(response.meals!.map((e) => e.toEntity()).toList());
    } on ServerException {
      return const Left(ServerFailure());
    } on DataParsingException {
      return const Left(DataParsingFailure());
    } on NoConectionExceptionOr404 {
      return const Left(NoConnectionFailureOr404());
    }
  }
}
