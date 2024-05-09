// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_meal_preview.freezed.dart';
part 'model_meal_preview.g.dart';

@freezed
class ModelMealPreview with _$ModelMealPreview {
  const factory ModelMealPreview({
    @JsonKey(name: 'idMeal') required String id,
    required String strMeal,
    required String strMealThumb,
  }) = _ModelMealPreview;

  factory ModelMealPreview.fromJson(Map<String, dynamic> json) =>
      _$ModelMealPreviewFromJson(json);
}
