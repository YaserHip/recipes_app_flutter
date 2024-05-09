import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app_flutter/features/auth/data/models/model_user.dart';
import 'package:recipes_app_flutter/features/auth/domain/usecases/usecase_logout.dart';
import 'package:recipes_app_flutter/features/auth/domain/usecases/usecase_user.dart';

part 'state_user.dart';

class CubitUser extends Cubit<StateUser> {
  final UseCaseUser getUser;
  final UseCaseLogout logout;

  CubitUser({required this.getUser, required this.logout})
      : super(StateUserInitial());

  void getCurrentUserInfo() async {
    try {
      final response = await getUser();
      response.fold((l) => emit(StateUserError(l.message)),
          (r) => emit(StateUserLoaded(r)));
    } catch (e) {
      emit(StateUserError(e.toString()));
    }
  }

  void doLogout() async {
    await logout();
    emit(StateUserLogout());
  }
}
