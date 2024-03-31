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
    dev.log(name: "List of Assets ID", uploadedImageIds.toString());

    // * Add Product & Return Pruduct ID
    String productID = await apiService.postAddProduct(
        endPoint: ApiKey.urlBulder(ApiKey.products),
        data: productEntitie.toJson());
    dev.log(name: "product ID", productID);

    apiService.postAddAssetstoProduct(
        endPoint:
            ApiKey.urlBulder("${ApiKey.products}/$productID/${ApiKey.assets}"),
        assetIds: uploadedImageIds);
  }
}
