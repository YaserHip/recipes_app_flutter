import 'package:dartz/dartz.dart';
import 'package:recipes_app_flutter/core/error/failures.dart';
import 'package:recipes_app_flutter/features/auth/data/models/model_favorite.dart';

abstract mixin class RepositoryFavorites {
  Future<Either<Failure, void>> deleteFavorite(ModelFavorite favorite);
  Future<Either<Failure, void>> addFavorite(ModelFavorite favorite);
  Either<Failure, Stream<List<ModelFavorite>>> getFavorites();
}
