import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app_flutter/features/recipes/domain/usecases/usecase_delete_favorite.dart';

part 'state_delete_favorite.dart';

class CubitDeleteFavorite extends Cubit<StateDeleteFavorite> {
  final UseCaseDeleteFavorite deleteFavorite;

  CubitDeleteFavorite({required this.deleteFavorite})
      : super(StateDeleteFavoriteInitial());

  void doDeleteFavorite(int id, String name, String image) async {
    try {
      emit(StateDeleteFavoriteLoading());
      final response = await deleteFavorite(id, name, image);
      response.fold((l) => emit(StateDeleteFavoriteError(l.message)),
          (r) => emit(StateDeleteFavoriteLoaded()));
    } catch (e) {
      emit(StateDeleteFavoriteError(e.toString()));
    }
  }
}
