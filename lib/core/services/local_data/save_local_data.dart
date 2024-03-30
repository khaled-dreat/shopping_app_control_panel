part of "../../import/app_import.dart";

void saveCategoryLocalData(List<CategoryEntity> categorys, String boxName) {
  var box = Hive.box<CategoryEntity>(boxName);
  box.addAll(categorys);
}
