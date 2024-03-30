part of "../../../../core/import/app_import.dart";

abstract class CategoryLocalDataSource {
  List<CategoryEntity> fetchAllCategory();
}

class CategoryLocalDataSourceImpl extends CategoryLocalDataSource {
  @override
  List<CategoryEntity> fetchAllCategory() {
    var box = Hive.box<CategoryEntity>(LocalDataKey.keyCategories);
    return box.values.toList();
  }
}
