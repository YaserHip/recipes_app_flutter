import 'package:equatable/equatable.dart';

class EntityMealIngredients extends Equatable {
  final String strIngredients;
  final String strMeasure;

  const EntityMealIngredients(
      {required this.strIngredients, required this.strMeasure});

  @override
  List<Object?> get props => [strIngredients, strMeasure];
}
