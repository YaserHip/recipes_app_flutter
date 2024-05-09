import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'model_favorite.freezed.dart';
part 'model_favorite.g.dart';

@freezed
@Embedded(ignore: {'props', 'copyWith'})
class ModelFavorite with _$ModelFavorite {
  const ModelFavorite._();

  const factory ModelFavorite({
    int? id,
    String? image,
    String? name,
  }) = _ModelFavorite;

  factory ModelFavorite.fromJson(Map<String, dynamic> json) =>
      _$ModelFavoriteFromJson(json);
}
