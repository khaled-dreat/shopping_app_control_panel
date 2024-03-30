part of "../../../../../core/import/app_import.dart";

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit(this.fetchAllCategoryUseCase) : super(CategoryInitial());
  final FetchAllCategoryUseCase fetchAllCategoryUseCase;
  Future<void> fetchAllCategory() async {
    emit(AllCategoryLoading());
    var result = await fetchAllCategoryUseCase.call();

    result.fold(
      (failure) {
        dev.log(failure.message);

        emit(AllCategoryFailure(failure.message));
      },
      (category) => emit(AllCategorySuccess(category)),
    );
  }
}
