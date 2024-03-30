part of "../../../../core/import/app_import.dart";

abstract class ProductsReomteDataSource {
  Future<void> addProduct(ProductDataEntitie data);
}

class ProductsReomteDataSourceImpl extends ProductsReomteDataSource {
  final ApiService apiService;

  ProductsReomteDataSourceImpl({required this.apiService});

  @override
  Future<void> addProduct(ProductDataEntitie data) async {
    dev.log(data.toString());
    apiService.postAddAssets(endPoint: "endPoint", data: data.toJson());
  }
}
