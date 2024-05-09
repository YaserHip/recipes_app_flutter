import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app_flutter/features/recipes/domain/entities/entities.dart';
import 'package:recipes_app_flutter/features/recipes/presentation/cubit/meal_by_id/cubit_meal_by_id.dart';

import '../widgets/widget_error.dart';
import '../widgets/widget_loading.dart';

class PageMealDetail extends StatelessWidget {
  final String id;

  const PageMealDetail({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    context.read<CubitMealById>().fetchMealDetails(id);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Recipe details',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, shadows: [
            Shadow(
                color: Colors.black12, offset: Offset(0.1, 0.1), blurRadius: 8)
          ]),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(18, 0, 18, 32),
            child: BlocBuilder<CubitMealById, StateMealById>(
                builder: (context, state) {
              return switch (state) {
                StateMealByIdInitial() => const SizedBox.shrink(),
                StateMealByIdLoading() =>
                  const WidgetLoading(height: 160, width: double.infinity),
                StateMealByIdLoaded() => _buildBody(context, state.data),
                StateMealByIdError() => WidgetError(
                    message: state.message,
                  ),
              };
            }),
          ),
        ),
      ),
    );
  }

  _buildBody(BuildContext context, EntityMealDetails data) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 300,
            width: double.infinity,
            child: Card(
              elevation: 0,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.network(
                data.strMealThumb,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text('${data.strCategory} • ${data.strArea}',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Theme.of(context).colorScheme.primary)),
          const SizedBox(
            height: 16,
          ),
          Text(
            data.strMeal,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
          ),
          const SizedBox(
            height: 18,
          ),
          const Text('Ingredients',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
          const SizedBox(height: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: data.listIngredients
                .map((e) => Text(
                      '• ${e.strIngredients} -- ${e.strMeasure}',
                    ))
                .toList(),
          ),
          const SizedBox(
            height: 24,
          ),
          const Text('Instructions',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
          const SizedBox(
            height: 8,
          ),
          Text(data.strInstructions!)
        ],
      );
}
