import 'package:dartz/dartz.dart';
import 'package:recipes_app_flutter/core/error/failures.dart';
import 'package:recipes_app_flutter/features/auth/data/models/model_favorite.dart';
import 'package:recipes_app_flutter/features/favorites/domain/repository/repository_favorites.dart';

class UseCaseGetFavorite {
  final RepositoryFavorites _repository;

  UseCaseGetFavorite(this._repository);

  Either<Failure, Stream<List<ModelFavorite>>> call() =>
      _repository.getFavorites();
}
