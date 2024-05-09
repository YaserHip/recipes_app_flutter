import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app_flutter/features/auth/data/models/model_favorite.dart';
import 'package:recipes_app_flutter/features/favorites/domain/usecases/usecase_get_favorites.dart';

part 'state_favorites.dart';

class CubitFavorites extends Cubit<StateFavorites> {
  final UseCaseGetFavorite getFavorites;

  CubitFavorites({required this.getFavorites}) : super(StateFavoritesInitial());

  void doGetFavorites() {
    try {
      getFavorites().fold(
          (l) => StateFavoritesError(message: l.message),
          (r) => r.listen((event) {
                emit(StateFavoritesLoaded(data: event));
              }));
    } catch (e) {
      emit(StateFavoritesError(message: e.toString()));
    }
  }
}
