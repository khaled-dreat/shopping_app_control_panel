part of "../../../../core/import/app_import.dart";

abstract class CategoryRepo {
  Future<Either<Failure, List<CategoryEntity>>> fetchAllCategory();
}
