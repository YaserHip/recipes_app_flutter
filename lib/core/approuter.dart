import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:recipes_app_flutter/core/di.dart';
import 'package:recipes_app_flutter/features/auth/presentation/cubit/login/cubit_login.dart';
import 'package:recipes_app_flutter/features/auth/presentation/cubit/register/cubit_register.dart';
import 'package:recipes_app_flutter/features/auth/presentation/cubit/splash/cubit_splash.dart';
import 'package:recipes_app_flutter/features/auth/presentation/cubit/user/cubit_user.dart';
import 'package:recipes_app_flutter/features/auth/presentation/pages/page_login.dart';
import 'package:recipes_app_flutter/features/auth/presentation/pages/page_register.dart';
import 'package:recipes_app_flutter/features/auth/presentation/pages/page_user.dart';
import 'package:recipes_app_flutter/features/recipes/domain/entities/entities.dart';
import 'package:recipes_app_flutter/features/recipes/presentation/cubit/categories_list/cubit_categories_list.dart';
import 'package:recipes_app_flutter/features/recipes/presentation/cubit/category_meal_list/cubit_category_meal_list.dart';
import 'package:recipes_app_flutter/features/recipes/presentation/cubit/meal_banner/cubit_meal_banner.dart';
import 'package:recipes_app_flutter/features/recipes/presentation/cubit/meal_by_id/cubit_meal_by_id.dart';
import 'package:recipes_app_flutter/features/recipes/presentation/cubit/meal_list_pagination/cubit_meal_list_pagination.dart';
import 'package:recipes_app_flutter/features/recipes/presentation/cubit/search_by_name/cubit_search_by_name.dart';
import 'package:recipes_app_flutter/features/recipes/presentation/pages/page_category.dart';
import 'package:recipes_app_flutter/features/recipes/presentation/pages/page_home.dart';
import 'package:recipes_app_flutter/features/recipes/presentation/pages/page_meal_detail.dart';
import 'package:recipes_app_flutter/features/recipes/presentation/pages/page_search_list.dart';
import 'package:recipes_app_flutter/features/recipes/presentation/pages/page_splash.dart';

enum AppRoutes {
  pageSplash,
  pageLogin,
  pageRegister,
  pageHome,
  pageCategory,
  pageMealDetails,
  pageSearchList,
  pageUser,
}

class AppRouter {
  static final _rootNavKey = GlobalKey<NavigatorState>();

  static final GoRouter _router = GoRouter(navigatorKey: _rootNavKey, routes: [
    GoRoute(
      path: '/',
      name: AppRoutes.pageSplash.name,
      builder: (context, state) => BlocProvider(
        create: (context) => getIt<CubitSplash>(),
        child: const PageSplash(),
      ),
    ),
    GoRoute(
      path: '/${AppRoutes.pageLogin.name}',
      name: AppRoutes.pageLogin.name,
      builder: (context, state) => BlocProvider(
        create: (context) => getIt<CubitLogin>(),
        child: const PageLogin(),
      ),
    ),
    GoRoute(
      path: '/${AppRoutes.pageRegister.name}',
      name: AppRoutes.pageRegister.name,
      builder: (context, state) => BlocProvider(
        create: (context) => getIt<CubitRegister>(),
        child: const PageRegister(),
      ),
    ),
    GoRoute(
      path: '/${AppRoutes.pageHome.name}',
      name: AppRoutes.pageHome.name,
      builder: (context, state) => MultiBlocProvider(providers: [
        BlocProvider(
            create: (context) =>
                getIt<CubitCategoriesList>()..getCategoriesList()),
        BlocProvider(
            create: (context) => getIt<CubitMealBanner>()..getRandomMeals()),
        BlocProvider(
            create: (context) =>
                getIt<CubitMealListPagination>()..getRandomMeals()),
      ], child: PageHome()),
    ),
    GoRoute(
      path: '/${AppRoutes.pageCategory.name}',
      name: AppRoutes.pageCategory.name,
      builder: (context, state) {
        EntityMealCategory data = state.extra as EntityMealCategory;
        return BlocProvider(
          create: (context) => getIt<CubitCategoryMealList>(),
          child: PageCategory(
            category: data,
          ),
        );
      },
    ),
    GoRoute(
      path: '/${AppRoutes.pageMealDetails.name}/:id',
      name: AppRoutes.pageMealDetails.name,
      builder: (context, state) => BlocProvider(
        create: (context) => getIt<CubitMealById>(),
        child: PageMealDetail(
          id: state.pathParameters['id']!,
        ),
      ),
    ),
    GoRoute(
      path: '/${AppRoutes.pageSearchList.name}/:name',
      name: AppRoutes.pageSearchList.name,
      builder: (context, state) => BlocProvider(
          create: (context) => getIt<CubitSearchByName>(),
          child: PageSearchList(
            name: state.pathParameters['name']!,
          )),
    ),
    GoRoute(
      path: '/${AppRoutes.pageUser.name}',
      name: AppRoutes.pageUser.name,
      builder: (context, state) => BlocProvider(
        create: (context) => getIt<CubitUser>()..getCurrentUserInfo(),
        child: const PageUser(),
      ),
    ),
  ]);

  static GoRouter get router => _router;
}
