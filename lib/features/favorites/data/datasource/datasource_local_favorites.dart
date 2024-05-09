import 'package:recipes_app_flutter/core/error/exceptions.dart';
import 'package:recipes_app_flutter/core/helper_isar.dart';
import 'package:recipes_app_flutter/features/auth/data/models/model_favorite.dart';
import 'package:recipes_app_flutter/features/auth/data/models/model_user.dart';

abstract mixin class DataSourceLocalFavorites {
  Stream<List<ModelFavorite>> getFavorites(int userId);
  Future<void> deleteFavorite(ModelFavorite favorite, int userId);
  Future<void> addFavorite(ModelFavorite favorite, int userId);
}

class ImplDataSourceLocalFavorites implements DataSourceLocalFavorites {
  final HelperIsar _isar;

  ImplDataSourceLocalFavorites({required HelperIsar isar}) : _isar = isar;

  @override
  Future<void> addFavorite(ModelFavorite favorite, int userId) async {
    try {
      final user = await _isar.getIsar().modelUsers.get(userId);
      if (user != null) {
        final favoriteList = user.favorites;
        if (!favoriteList.contains(favorite)) {
          favoriteList.add(favorite);
          final updatedUser = user.copyWith(favorites: favoriteList);
          await _isar
              .getIsar()
              .writeTxn(() => _isar.getIsar().modelUsers.put(updatedUser));
        } else {
          throw FavoriteAlreadySavedException();
        }
      } else {
        throw UserDoNotExistException();
      }
    } catch (e) {
      if (e is UserDoNotExistException) {
        rethrow;
      } else if (e is FavoriteAlreadySavedException) {
        rethrow;
      } else {
        throw DataParsingException();
      }
    }
  }

  @override
  Future<void> deleteFavorite(ModelFavorite favorite, int userId) async {
    try {
      final user = await _isar.getIsar().modelUsers.get(userId);
      if (user != null) {
        final favoriteList = user.favorites;
        if (!favoriteList.contains(favorite)) {
          favoriteList.remove(favorite);
          final updatedUser = user.copyWith(favorites: favoriteList);
          await _isar
              .getIsar()
              .writeTxn(() => _isar.getIsar().modelUsers.put(updatedUser));
        } else {
          throw FavoriteAlreadySavedException();
        }
      } else {
        throw UserDoNotExistException();
      }
    } catch (e) {
      if (e is UserDoNotExistException) {
        rethrow;
      } else if (e is FavoriteAlreadySavedException) {
        rethrow;
      } else {
        throw DataParsingException();
      }
    }
  }

  @override
  Stream<List<ModelFavorite>> getFavorites(int userId) {
    try {
      return _isar
          .getIsar()
          .modelUsers
          .watchObject(userId)
          .map((event) => event!.favorites);
    } catch (e) {
      throw DataParsingException();
    }
  }
}
