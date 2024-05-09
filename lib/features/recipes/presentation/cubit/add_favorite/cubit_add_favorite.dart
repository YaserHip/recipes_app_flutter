import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app_flutter/features/recipes/domain/usecases/usecase_add_favorite.dart';

part 'state_add_favorite.dart';

class CubitAddFavorite extends Cubit<StateAddFavorite> {
  final UseCaseAddFavorite addFavorite;

  CubitAddFavorite({required this.addFavorite})
      : super(StateAddFavoriteInitial());

  void doAddFavorite(int id, String name, String image) async {
    try {
      emit(StateAddFavoriteLoading());
      final response = await addFavorite(id, name, image);
      response.fold((l) => emit(StateAddFavoriteError(l.message)),
          (r) => emit(StateAddFavoriteLoaded()));
    } catch (e) {
      emit(StateAddFavoriteError(e.toString()));
    }
  }
}
