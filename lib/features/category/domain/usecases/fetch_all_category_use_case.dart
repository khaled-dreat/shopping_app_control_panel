part of "../../../../core/import/app_import.dart";

class FetchAllCategoryUseCase extends UseCase<List<CategoryEntity>, NoParam> {
  final CategoryRepo categoryRepo;

  FetchAllCategoryUseCase(this.categoryRepo);
  @override
  Future<Either<Failure, List<CategoryEntity>>> call([NoParam? param]) async {
    return await categoryRepo.fetchAllCategory();
  }
}
