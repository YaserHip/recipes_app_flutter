// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_meal_category.freezed.dart';
part 'model_meal_category.g.dart';

@freezed
class ModelMealCategory with _$ModelMealCategory {
  const factory ModelMealCategory({
    @JsonKey(name: 'idCategory') required String id,
    required String strCategory,
    required String strCategoryThumb,
    required String strCategoryDescription,
  }) = _ModelMealCategory;

  factory ModelMealCategory.fromJson(Map<String, dynamic> json) =>
      _$ModelMealCategoryFromJson(json);
}
