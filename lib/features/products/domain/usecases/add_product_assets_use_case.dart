part of "../../../../core/import/app_import.dart";

class AddProductAssetstUseCase extends UseCase<NoParam, ProductDataEntitie> {
  final ProductRepo productRepo;

  AddProductAssetstUseCase({required this.productRepo});

  @override
  Future<Either<Failure, NoParam>> call([ProductDataEntitie? param]) async {
    return await productRepo.addProduct(param!);
  }
}
