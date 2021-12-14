import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_cupboard/domain/models/categorie.dart';
import 'package:my_cupboard/domain/services/categories_data.dart';

part 'categories_event.dart';
part 'categories_state.dart';
part 'categories_bloc.freezed.dart';

@injectable
class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  CategoriesBloc(this._categoriesData) : super(const _Initial([])) {
    _init();
    on<_Started>(_startedToState);
    on<_AddCategorie>(addCategorieToState);
  }
  final CategoriesData _categoriesData;
  late final TextEditingController _categorieNameController;

  void _init() {
    _categorieNameController = TextEditingController();
  }

  TextEditingController get categorieNameController => _categorieNameController;

  FutureOr<void> _startedToState(_Started event, Emitter<CategoriesState> emit) async {
    List<Categorie> categories = await _categoriesData.getAllCategories();
    emit(_Initial(categories));
  }

  FutureOr<void> addCategorieToState(_AddCategorie event, Emitter<CategoriesState> emit) async {
    emit(const _IsLoading());
    final categorie = Categorie(name: _categorieNameController.text);

    try {
      final response = await _categoriesData.addCategorie(categorie);
      if (response.name == '') {
        emit(const _Failed('la categoria ya existe'));
      }
      List<Categorie> categories = await _categoriesData.getAllCategories();
      emit(_Saved(categories));
    } catch (e) {
      emit(CategoriesState.failed(e.toString()));
    }
  }
}
