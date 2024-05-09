import 'package:equatable/equatable.dart';
import 'package:recipes_app_flutter/features/recipes/domain/entities/entity_meal_ingredients.dart';

class EntityMealDetails extends Equatable {
  final String idMeal;
  final String strMeal;
  final String? strCategory;
  final String? strArea;
  final String? strInstructions;
  final String strMealThumb;
  final String? strTags;
  final String? strYoutube;
  final List<EntityMealIngredients> listIngredients;

  const EntityMealDetails({
    required this.idMeal,
    required this.strMeal,
    this.strCategory,
    this.strArea,
    this.strInstructions,
    required this.strMealThumb,
    this.strTags,
    this.strYoutube,
    required this.listIngredients,
  });

  @override
  List<Object?> get props => [
        idMeal,
        strMeal,
        strCategory,
        strArea,
        strInstructions,
        strMealThumb,
        strTags,
        strYoutube,
        listIngredients
      ];
}
