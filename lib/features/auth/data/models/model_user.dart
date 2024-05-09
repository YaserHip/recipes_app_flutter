import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:recipes_app_flutter/features/auth/data/models/model_favorite.dart';

part 'model_user.freezed.dart';
part 'model_user.g.dart';

@freezed
@Collection(ignore: {'props', 'copyWith'})
class ModelUser with _$ModelUser {
  const ModelUser._();

  const factory ModelUser({
    @Default(Isar.autoIncrement) int id,
    required String name,
    required String email,
    required String password,
    @Default(<ModelFavorite>[]) List<ModelFavorite> favorites,
  }) = _ModelUser;

  Id get id => id;

  factory ModelUser.fromJson(Map<String, dynamic> json) =>
      _$ModelUserFromJson(json);
}
