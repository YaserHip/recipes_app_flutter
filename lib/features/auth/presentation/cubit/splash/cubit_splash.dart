import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app_flutter/features/auth/domain/usecases/usecase_auth_status.dart';

part 'state_splash.dart';

class CubitSplash extends Cubit<StateSplash> {
  final UseCaseAuthStatus authStatus;

  CubitSplash({required this.authStatus}) : super(StateSplashInitial());

  void checkAuthStatus() async {
    await Future.delayed(const Duration(milliseconds: 1500));
    try {
      final response = await authStatus();
      response.fold((l) => emit(StateSplashError(l.message)),
          (r) => emit(StateSplashLoaded(data: r)));
    } catch (e) {
      emit(StateSplashError(e.toString()));
    }
  }
}
