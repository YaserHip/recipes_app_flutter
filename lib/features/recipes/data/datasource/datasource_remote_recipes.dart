import 'package:dio/dio.dart';
import 'package:recipes_app_flutter/core/error/exceptions.dart';
import 'package:recipes_app_flutter/features/recipes/data/models/models.dart';

abstract mixin class DataSourceRemoteRecipes {
  Future<ModelMealDetails> getRandomMeal();

  Future<ModelMealDetails> getMealById(String id);

  Future<ModelMealCategoryResult> getCategories();

  Future<ModelMealPreviewResult> searchByCategory(String categoryName);

  Future<ModelMealPreviewResult> searchByName(String mealName);
}

class ImplDataSourceRemoteRecipes implements DataSourceRemoteRecipes {
  final Dio _dio;

  ImplDataSourceRemoteRecipes({required Dio dio}) : _dio = dio;

  @override
  Future<ModelMealCategoryResult> getCategories() async {
    try {
      final response = await _dio.get('/categories.php');
      if (response.statusCode == 200) {
        try {
          return ModelMealCategoryResult.fromJson(response.data);
        } on Exception {
          throw DataParsingException();
        }
      } else {
        throw ServerException();
      }
    } catch (e) {
      if ((e is ServerException) || (e is DataParsingException)) {
        rethrow;
      } else {
        throw NoConectionExceptionOr404();
      }
    }
  }

  @override
  Future<ModelMealDetails> getMealById(String id) =>
      _getModelMealDetailsFromUrl('/lookup.php?i=$id');

  @override
  Future<ModelMealDetails> getRandomMeal() =>
      _getModelMealDetailsFromUrl('/random.php');

  @override
  Future<ModelMealPreviewResult> searchByCategory(String categoryName) =>
      _getModelMealPreviewResultFromUrl('/filter.php?c=$categoryName');

  @override
  Future<ModelMealPreviewResult> searchByName(String mealName) =>
      _getModelMealPreviewResultFromUrl('/search.php?s=$mealName');

  Future<ModelMealPreviewResult> _getModelMealPreviewResultFromUrl(
      String url) async {
    try {
      final response = await _dio.get(url);
      if (response.statusCode == 200) {
        try {
          return ModelMealPreviewResult.fromJson(response.data);
        } on Exception {
          throw DataParsingException();
        }
      } else {
        throw ServerException();
      }
    } catch (e) {
      if ((e is ServerException) || (e is DataParsingException)) {
        rethrow;
      } else {
        throw NoConectionExceptionOr404();
      }
    }
  }

  Future<ModelMealDetails> _getModelMealDetailsFromUrl(String url) async {
    try {
      final response = await _dio.get(url);
      if (response.statusCode == 200) {
        try {
          return ModelMealDetails.fromJson(response.data);
        } on Exception {
          throw DataParsingException();
        }
      } else {
        throw ServerException();
      }
    } catch (e) {
      if ((e is ServerException) || (e is DataParsingException)) {
        rethrow;
      } else {
        if (e is DioException && e.response?.statusCode == 404) {
          throw ServerException();
        } else {
          throw NoConectionExceptionOr404();
        }
      }
    }
  }
}
