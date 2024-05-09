import 'package:dartz/dartz.dart';
import 'package:recipes_app_flutter/core/error/failures.dart';
import 'package:recipes_app_flutter/features/auth/data/models/model_favorite.dart';
import 'package:recipes_app_flutter/features/favorites/domain/repository/repository_favorites.dart';

class UseCaseAddFavorite {
  final RepositoryFavorites _repository;

  UseCaseAddFavorite(this._repository);

  Future<Either<Failure, void>> call(int id, String name, String image) async =>
      _repository.addFavorite(ModelFavorite(id: id, name: name, image: image));
}
