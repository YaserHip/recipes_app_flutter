import 'package:equatable/equatable.dart';

class EntityMealPreview extends Equatable {
  final String id;
  final String strMeal;
  final String strMealThumb;

  const EntityMealPreview(
      {required this.strMeal, required this.strMealThumb, required this.id});

  @override
  List<Object?> get props => [id, strMeal, strMealThumb];
}
