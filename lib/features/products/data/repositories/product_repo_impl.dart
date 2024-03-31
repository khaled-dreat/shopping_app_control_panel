part of "../../../../core/import/app_import.dart";

class ProductRepoImpl extends ProductRepo {
  final ProductsReomteDataSource productsReomteDataSource;

  ProductRepoImpl({required this.productsReomteDataSource});

  @override
  Future<Either<Failure, NoParam>> addProduct(
      ProductDataEntitie productEntitie) async {
    try {
      productsReomteDataSource.addProduct(productEntitie);
      return right(NoParam());
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(message: e.toString()));
    }
  }
}
