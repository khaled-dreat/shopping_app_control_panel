part of "../../../../core/import/app_import.dart";

abstract class ProductRepo {
  Future<Either<Failure, NoParam>> addProduct(ProductDataEntitie data);
}
