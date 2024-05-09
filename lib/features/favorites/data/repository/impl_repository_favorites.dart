import 'package:dartz/dartz.dart';
import 'package:recipes_app_flutter/core/error/exceptions.dart';
import 'package:recipes_app_flutter/core/error/failures.dart';
import 'package:recipes_app_flutter/core/helper_shared_pref.dart';
import 'package:recipes_app_flutter/features/auth/data/models/model_favorite.dart';
import 'package:recipes_app_flutter/features/favorites/data/datasource/datasource_local_favorites.dart';
import 'package:recipes_app_flutter/features/favorites/domain/repository/repository_favorites.dart';

class ImplRepositoryFavorites implements RepositoryFavorites {
  final DataSourceLocalFavorites dataSource;
  final HelperSharedPref sharedPref;

  ImplRepositoryFavorites({required this.dataSource, required this.sharedPref});

  @override
  Future<Either<Failure, void>> addFavorite(ModelFavorite favorite) async {
    final userID = sharedPref.getUserInfo();

    try {
      final response = await dataSource.addFavorite(favorite, userID);
      return Right(response);
    } on FavoriteAlreadySavedException {
      return const Left(FavoriteAlreadySavedFailure());
    } on UserDoNotExistException {
      return const Left(UserDoNotExistFailure());
    } on DataParsingException {
      return const Left(DataParsingFailure());
    }
  }

  @override
  Future<Either<Failure, void>> deleteFavorite(ModelFavorite favorite) async {
    final userID = sharedPref.getUserInfo();

    try {
      final response = await dataSource.deleteFavorite(favorite, userID);
      return Right(response);
    } on FavoriteAlreadySavedException {
      return const Left(FavoriteAlreadySavedFailure());
    } on UserDoNotExistException {
      return const Left(UserDoNotExistFailure());
    } on DataParsingException {
      return const Left(DataParsingFailure());
    }
  }

  @override
  Either<Failure, Stream<List<ModelFavorite>>> getFavorites() {
    final userID = sharedPref.getUserInfo();

    try {
      return Right(dataSource.getFavorites(userID));
    } on DataParsingException {
      return const Left(DataParsingFailure());
    }
  }
}
