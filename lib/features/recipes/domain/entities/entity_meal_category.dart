import 'package:equatable/equatable.dart';

class EntityMealCategory extends Equatable {
  final String id;
  final String strCategory;
  final String strCategoryThumb;
  final String strCategoryDescription;

  const EntityMealCategory(
      {required this.id,
      required this.strCategory,
      required this.strCategoryThumb,
      required this.strCategoryDescription});

  @override
  List<Object?> get props =>
      [id, strCategory, strCategoryThumb, strCategoryDescription];
}
