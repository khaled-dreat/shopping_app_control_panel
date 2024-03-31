part of "../../../../core/import/app_import.dart";

class ProductRepoImpl extends ProductRepo {
  final ProductsReomteDataSource productsReomteDataSource;

  ProductRepoImpl({required this.productsReomteDataSource});

  @override
  Future<Either<Failure, NoParam>> addProductAssets() async {
    try {
      productsReomteDataSource.addProductAssets();
      return right(NoParam());
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(message: e.toString()));
    }
  }
}
