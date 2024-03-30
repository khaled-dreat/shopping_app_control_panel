part of "../../../../core/import/app_import.dart";

abstract class CategoryRemoteDataSource {
  Future<List<CategoryEntity>> fetchAllCategory();
}

class CategoryRemoteDataSourceimpl extends CategoryRemoteDataSource {
  final ApiService apiService;

  CategoryRemoteDataSourceimpl({required this.apiService});
  @override
  Future<List<CategoryEntity>> fetchAllCategory() async {
    var data = await apiService.get(endPoint: "categories");

    List<CategoryEntity> categorys = getCategoryList(data);
    saveCategoryLocalData(categorys, LocalDataKey.keyCategories);
    return categorys;
  }

  List<CategoryEntity> getCategoryList(Map<String, dynamic> data) {
    List<CategoryEntity> categories = [];

    for (var categoryMap in data['data']) {
      categories.add(CategoryModel.fromJson(categoryMap));
    }
    dev.log(name: "data", categories.toString());

    return categories;
  }
}
