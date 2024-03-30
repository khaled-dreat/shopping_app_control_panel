part of "../../../../../core/import/app_import.dart";

abstract class CategoryState {
  const CategoryState();
}

class CategoryInitial extends CategoryState {}

class AllCategoryLoading extends CategoryState {}

class AllCategorySuccess extends CategoryState {
  final List<CategoryEntity> category;

  AllCategorySuccess(this.category);
}

class AllCategoryFailure extends CategoryState {
  final String errMessage;

  AllCategoryFailure(this.errMessage);
}
