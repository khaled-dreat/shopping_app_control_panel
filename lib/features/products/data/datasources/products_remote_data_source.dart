part of "../../../../core/import/app_import.dart";

abstract class ProductsReomteDataSource {
  Future<void> addProduct(ProductDataEntitie productEntitie);
}

class ProductsReomteDataSourceImpl extends ProductsReomteDataSource {
  final ApiService apiService;

  ProductsReomteDataSourceImpl({required this.apiService});

  @override
  Future<void> addProduct(ProductDataEntitie productEntitie) async {
    // * Add Assets & Return List of Assets ID
    List<String> uploadedImageIds = await apiService.postAddAssets(
      endPoint: ApiKey.urlBulder(ApiKey.assets),
    );
    // * Add Product & Return Pruduct ID
    String productID = await apiService.postAddProduct(
        endPoint: ApiKey.urlBulder(ApiKey.products),
        data: productEntitie.toJson());
    dev.log(productID);
  }
}
