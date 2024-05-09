import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app_flutter/features/auth/domain/usecases/usecase_login.dart';

import '../../../data/models/model_user.dart';

part 'state_login.dart';

class CubitLogin extends Cubit<StateLogin> {
  final UseCaseLogin doLogin;

  CubitLogin({required this.doLogin}) : super(StateLoginInitial());

  void loginWithEmailAndPass(String email, String pass) async {
    try {
      emit(StateLoginLoading());
      final response = await doLogin(email, pass);
      response.fold((l) => emit(StateLoginError(message: l.message)),
          (r) => emit(StateLoginLoaded(data: r)));
    } catch (e) {
      emit(StateLoginError(message: e.toString()));
    }
  }
}
