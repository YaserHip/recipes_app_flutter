part of 'cubit_delete_favorite.dart';

sealed class StateDeleteFavorite {}

class StateDeleteFavoriteInitial extends StateDeleteFavorite {}

class StateDeleteFavoriteLoading extends StateDeleteFavorite {}

class StateDeleteFavoriteLoaded extends StateDeleteFavorite {}

class StateDeleteFavoriteError extends StateDeleteFavorite {
  final String message;

  StateDeleteFavoriteError(this.message);
}
