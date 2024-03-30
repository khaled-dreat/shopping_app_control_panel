part of "../import/app_import.dart";

final getIt = GetIt.instance;
void setupServiceLocatorCategory() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<CategoryRepoImpl>(CategoryRepoImpl(
      categoryRemoteDataSource:
          CategoryRemoteDataSourceimpl(apiService: getIt.get<ApiService>()),
      categoryLocalDataSource: CategoryLocalDataSourceImpl()));
}

void setupServiceLocatorAddProduct() {
  getIt.registerSingleton<ProductRepoImpl>(ProductRepoImpl(
    productsReomteDataSource:
        ProductsReomteDataSourceImpl(apiService: getIt.get<ApiService>()),
  ));
}
