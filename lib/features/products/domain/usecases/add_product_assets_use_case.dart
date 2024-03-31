part of "../../../../core/import/app_import.dart";

class AddProductAssetstUseCase extends UseCase<NoParam, NoParam> {
  final ProductRepo productRepo;

  AddProductAssetstUseCase({required this.productRepo});

  @override
  Future<Either<Failure, NoParam>> call([NoParam? param]) async {
    return await productRepo.addProductAssets();
  }
}
