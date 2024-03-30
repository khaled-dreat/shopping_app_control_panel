part of "../../../../core/import/app_import.dart";

class ProductDataEntitie {
  String? name;
  String? price;
  String? description;
  String? categoryid;
  List<String?>? images;

  ProductDataEntitie(
      {this.name, this.price, this.description, this.images, this.categoryid});
  void setName(String? value) => name = value;
  void setPrice(String? value) => price = value;
  void setDescription(String? value) => description = value;
  void setCategoryId(String? value) => categoryid = value;
  void setImages(List<String?> value) => images = value;

  @override
  String toString() =>
      " ProductDataModel(name: $name, price: $price, description: $description, categoryid: $categoryid)";
  Map<String, dynamic> toJson() {
    return {
      'name': name.toString(),
      'price': price,
      'description': description,
      'categoryid': categoryid,
      'images': images?.where((image) => image != null).toList(),
    };
  }
}
