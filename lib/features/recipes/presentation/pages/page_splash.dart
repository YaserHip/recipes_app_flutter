import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:recipes_app_flutter/core/approuter.dart';
import 'package:recipes_app_flutter/features/auth/presentation/cubit/splash/cubit_splash.dart';

class PageSplash extends StatelessWidget {
  const PageSplash({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<CubitSplash>().checkAuthStatus();

    return BlocListener<CubitSplash, StateSplash>(
      listener: (context, state) async {
        if (state is StateSplashLoaded) {
          context.go('/${AppRoutes.pageHome.name}');
        } else if (state is StateSplashError) {
          context.go('/${AppRoutes.pageLogin.name}');
        }
      },
      child: const Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'The\nRecipes',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      shadows: [
                        Shadow(
                            color: Colors.black26,
                            offset: Offset(0.1, 0.1),
                            blurRadius: 8)
                      ]),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'A new way of cooking.',
                  style: TextStyle(fontSize: 13),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
