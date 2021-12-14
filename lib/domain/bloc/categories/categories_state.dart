part of 'categories_bloc.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState.initial(List<Categorie>? categories) = _Initial;
  const factory CategoriesState.isLoading() = _IsLoading;
  const factory CategoriesState.saved(List<Categorie>? categories) = _Saved;
  const factory CategoriesState.failed(String? error) = _Failed;
}
