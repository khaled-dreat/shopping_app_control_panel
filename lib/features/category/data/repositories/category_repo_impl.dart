part of "../../../../core/import/app_import.dart";

class CategoryRepoImpl extends CategoryRepo {
  final CategoryRemoteDataSource categoryRemoteDataSource;
  final CategoryLocalDataSource categoryLocalDataSource;

  CategoryRepoImpl(
      {required this.categoryRemoteDataSource,
      required this.categoryLocalDataSource});
  @override
  Future<Either<Failure, List<CategoryEntity>>> fetchAllCategory() async {
    try {
      List<CategoryEntity> categorys;
      //  categorys = categoryLocalDataSource.fetchAllCategory();
      //  if (categorys.isNotEmpty) {
      //    return right(categorys);
      //  }
      categorys = await categoryRemoteDataSource.fetchAllCategory();
      dev.log(categorys.toString());

      return right(categorys);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(message: e.toString()));
    }
  }
}
