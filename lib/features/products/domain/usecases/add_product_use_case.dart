part of "../../../../core/import/app_import.dart";

class AddProductUseCase extends UseCase<NoParam, ProductDataEntitie> {
  final ProductRepo productRepo;

  AddProductUseCase({required this.productRepo});

  @override
  Future<Either<Failure, NoParam>> call([ProductDataEntitie? param]) async {
    return await productRepo.addProduct(param!);
  }
}
