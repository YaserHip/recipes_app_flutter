import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app_flutter/features/auth/domain/usecases/usecase_register.dart';

part 'state_register.dart';

class CubitRegister extends Cubit<StateRegister> {
  final UseCaseRegister doRegister;

  CubitRegister({required this.doRegister}) : super(StateRegisterInitial());

  void doRegisterWithEmail(String name, String email, String pass) async {
    try {
      emit(StateRegisterLoading());
      final response = await doRegister(name, email, pass);
      response.fold((l) => emit(StateRegisterError(message: l.message)),
          (r) => emit(StateRegisterLoaded()));
    } catch (e) {
      emit(StateRegisterError(message: e.toString()));
    }
  }
}
