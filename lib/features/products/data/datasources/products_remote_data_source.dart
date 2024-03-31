part of "../../../../core/import/app_import.dart";

abstract class ProductsReomteDataSource {
  Future<void> addProduct(ProductDataEntitie productEntitie);
}

class ProductsReomteDataSourceImpl extends ProductsReomteDataSource {
  final ApiService apiService;

  ProductsReomteDataSourceImpl({required this.apiService});

  @override
  Future<void> addProduct(ProductDataEntitie productEntitie) async {
    List<String> uploadedImageIds = await apiService.postAddAssets(
      endPoint: ApiKey.urlBulder(ApiKey.assets),
    );
  }
}
