part of "../../../../core/import/app_import.dart";

abstract class ProductsReomteDataSource {
  Future<void> addProductAssets();
}

class ProductsReomteDataSourceImpl extends ProductsReomteDataSource {
  final ApiService apiService;

  ProductsReomteDataSourceImpl({required this.apiService});

  @override
  Future<void> addProductAssets() async {
    dev.log("data.toString()");
    apiService.postAddAssets(
      endPoint: "endPoint",
    );
  }
}
