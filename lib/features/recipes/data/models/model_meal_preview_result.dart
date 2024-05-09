import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipes_app_flutter/features/recipes/data/models/model_meal_preview.dart';

part 'model_meal_preview_result.freezed.dart';
part 'model_meal_preview_result.g.dart';

@freezed
class ModelMealPreviewResult with _$ModelMealPreviewResult {
  const factory ModelMealPreviewResult({
    List<ModelMealPreview>? meals,
  }) = _ModelMealPreviewResult;

  factory ModelMealPreviewResult.fromJson(Map<String, dynamic> json) =>
      _$ModelMealPreviewResultFromJson(json);
}
