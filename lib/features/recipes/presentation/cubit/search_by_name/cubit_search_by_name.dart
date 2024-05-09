import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app_flutter/features/recipes/domain/entities/entities.dart';
import 'package:recipes_app_flutter/features/recipes/domain/usecases/usecase_search_by_name.dart';

part 'state_search_by_name.dart';

class CubitSearchByName extends Cubit<StateSearchByName> {
  final UseCaseSearchByName searchByName;

  CubitSearchByName({required this.searchByName})
      : super(StateSearchByNameInitial());

  void fetchSearchByName(String name) async {
    try {
      emit(StateSearchByNameLoading());
      final response = await searchByName(name);

      response.fold((l) => emit(StateSearchByNameError(l.message)),
          (r) => emit(StateSearchByNameLoaded(r)));
    } catch (e) {
      emit(StateSearchByNameError(e.toString()));
    }
  }
}
