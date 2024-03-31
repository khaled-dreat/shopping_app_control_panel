// ignore_for_file: public_member_api_docs, sort_constructors_first
part of "../../../../../core/import/app_import.dart";

class AddProductsCubit extends Cubit<AddProductsState> {
  AddProductsCubit(this.addProductAssetstUseCase) : super(AddProductsInitial());
  final AddProductAssetstUseCase addProductAssetstUseCase;
  ProductDataEntitie productEntitie = ProductDataEntitie();
  void saveProduct() {
    addProductAssetstUseCase.call(productEntitie);
  }
}
