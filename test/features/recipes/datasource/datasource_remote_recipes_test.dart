import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:recipes_app_flutter/core/error/exceptions.dart';
import 'package:recipes_app_flutter/features/recipes/data/datasource/datasource_remote_recipes.dart';
import 'package:recipes_app_flutter/features/recipes/data/models/model_meal_category_result.dart';

class MockDioClient extends Mock implements Dio {}

void main() {
  late Dio client;
  late ImplDataSourceRemoteRecipes dataSource;

  setUp(() {
    client = MockDioClient();
    dataSource = ImplDataSourceRemoteRecipes(dio: client);
  });

  void mockedSuccessDioResponse(String filename) {
    when(() => client.get(any())).thenAnswer((realInvocation) async => Response(
        data: json.decode(getJsonFromFile(filename)),
        statusCode: 200,
        requestOptions: RequestOptions(method: 'GET', path: '')));
  }

  void mockedErrorDioResponse() {
    when(() => client.get(any())).thenThrow((realInvocation) => DioException(
        requestOptions: RequestOptions(method: 'GET', path: ''),
        response: Response(
            statusCode: 404,
            statusMessage: 'Error',
            requestOptions: RequestOptions(method: 'GET', path: ''))));
  }

  group('getCategories', () {
    final modelMealCategories = ModelMealCategoryResult.fromJson(
        json.decode(getJsonFromFile('categories.json')));

    test('''verifying that the request was launched''', () async {
      mockedSuccessDioResponse('categories.json');

      await dataSource.getCategories();

      verify(() => client.get(any())).called(1);
    });

    test('''return a success categories list''', () async {
      mockedSuccessDioResponse('categories.json');

      final response = await dataSource.getCategories();

      expect(response, modelMealCategories);
    });

    test('''return an error 404, and a server exception''', () async {
      mockedErrorDioResponse();

      expect(() async => await dataSource.getCategories(),
          throwsA(const TypeMatcher<NoConectionExceptionOr404>()));
    });
  });
}

String getJsonFromFile(String fileName) =>
    File('test/mocked_responses/$fileName').readAsStringSync();
