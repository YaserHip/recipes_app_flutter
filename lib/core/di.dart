import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:recipes_app_flutter/core/helper_isar.dart';
import 'package:recipes_app_flutter/core/helper_shared_pref.dart';
import 'package:recipes_app_flutter/features/auth/data/datasource/datasource_local_auth.dart';
import 'package:recipes_app_flutter/features/auth/data/repository/impl_repository_auth.dart';
import 'package:recipes_app_flutter/features/auth/domain/repositories/repository_auth.dart';
import 'package:recipes_app_flutter/features/auth/domain/usecases/usecase_auth_status.dart';
import 'package:recipes_app_flutter/features/auth/domain/usecases/usecase_login.dart';
import 'package:recipes_app_flutter/features/auth/domain/usecases/usecase_logout.dart';
import 'package:recipes_app_flutter/features/auth/domain/usecases/usecase_register.dart';
import 'package:recipes_app_flutter/features/auth/domain/usecases/usecase_user.dart';
import 'package:recipes_app_flutter/features/auth/presentation/cubit/login/cubit_login.dart';
import 'package:recipes_app_flutter/features/auth/presentation/cubit/register/cubit_register.dart';
import 'package:recipes_app_flutter/features/auth/presentation/cubit/splash/cubit_splash.dart';
import 'package:recipes_app_flutter/features/auth/presentation/cubit/user/cubit_user.dart';
import 'package:recipes_app_flutter/features/recipes/data/datasource/datasource_remote_recipes.dart';
import 'package:recipes_app_flutter/features/recipes/data/repositories/impl_repository_recipes.dart';
import 'package:recipes_app_flutter/features/recipes/domain/repositories/repository_recipes.dart';
import 'package:recipes_app_flutter/features/recipes/domain/usecases/usecase_get_categories.dart';
import 'package:recipes_app_flutter/features/recipes/domain/usecases/usecase_get_meal_by_id.dart';
import 'package:recipes_app_flutter/features/recipes/domain/usecases/usecase_get_seven_random_meals.dart';
import 'package:recipes_app_flutter/features/recipes/domain/usecases/usecase_search_by_category.dart';
import 'package:recipes_app_flutter/features/recipes/presentation/cubit/categories_list/cubit_categories_list.dart';
import 'package:recipes_app_flutter/features/recipes/presentation/cubit/category_meal_list/cubit_category_meal_list.dart';
import 'package:recipes_app_flutter/features/recipes/presentation/cubit/meal_banner/cubit_meal_banner.dart';
import 'package:recipes_app_flutter/features/recipes/presentation/cubit/meal_by_id/cubit_meal_by_id.dart';
import 'package:recipes_app_flutter/features/recipes/presentation/cubit/meal_list_pagination/cubit_meal_list_pagination.dart';

import '../features/recipes/domain/usecases/usecase_search_by_name.dart';
import '../features/recipes/presentation/cubit/search_by_name/cubit_search_by_name.dart';

final getIt = GetIt.instance;

Future<void> initAsyncSingletons() async {
  getIt.registerLazySingleton(() => HelperIsar());
  getIt.registerLazySingleton(() => HelperSharedPref());

  await getIt<HelperSharedPref>().init();
  await getIt<HelperIsar>().init();
}

void initDI() async {
  getIt.registerLazySingleton(() =>
      Dio(BaseOptions(baseUrl: 'https://www.themealdb.com/api/json/v1/1')));

  //DataSource Remote initialization
  getIt.registerLazySingleton<DataSourceRemoteRecipes>(
      () => ImplDataSourceRemoteRecipes(dio: getIt()));

  //RepositoryRecipes initialization
  getIt.registerLazySingleton<RepositoryRecipes>(
      () => ImplRepositoryRecipes(dataSource: getIt()));

  //DataSource Local Auth Initialization
  getIt.registerLazySingleton<DataSourceLocalAuth>(
      () => ImplDataSourceLocalAuth(isar: getIt()));

  //RepositoryAuth Initialization
  getIt.registerLazySingleton<RepositoryAuth>(
      () => ImplRepositoryAuth(dataSource: getIt(), sharedPref: getIt()));

  //UseCases Recipes initialization
  getIt.registerLazySingleton(() => UseCaseGetCategories(getIt()));
  getIt.registerLazySingleton(() => UseCaseSearchByName(getIt()));
  getIt.registerLazySingleton(() => UseCaseSearchByCategory(getIt()));
  getIt.registerLazySingleton(() => UseCaseGetSevenRandomMeals(getIt()));
  getIt.registerLazySingleton(() => UseCaseGetMealById(getIt()));
  getIt.registerLazySingleton(() => UseCaseAuthStatus(getIt()));
  getIt.registerLazySingleton(() => UseCaseLogin(getIt()));
  getIt.registerLazySingleton(() => UseCaseRegister(getIt()));
  getIt.registerLazySingleton(() => UseCaseUser(getIt()));
  getIt.registerLazySingleton(() => UseCaseLogout(getIt()));
  //Cubit Recipes initialization
  getIt.registerFactory(() => CubitCategoriesList(getCategories: getIt()));
  getIt.registerFactory(() => CubitMealBanner(getSevenRandomMeals: getIt()));
  getIt.registerFactory(() => CubitMealById(getMealById: getIt()));
  getIt.registerFactory(() => CubitSearchByName(searchByName: getIt()));
  getIt.registerFactory(
      () => CubitMealListPagination(getSevenRandomMeals: getIt()));
  getIt.registerFactory(
      () => CubitCategoryMealList(getSearchByCategory: getIt()));
  getIt.registerFactory(() => CubitSplash(authStatus: getIt()));
  getIt.registerFactory(() => CubitLogin(doLogin: getIt()));
  getIt.registerFactory(() => CubitRegister(doRegister: getIt()));
  getIt.registerFactory(() => CubitUser(getUser: getIt(), logout: getIt()));
}
