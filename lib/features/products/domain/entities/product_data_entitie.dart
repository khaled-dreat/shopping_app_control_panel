part of "../../../../core/import/app_import.dart";

class ProductDataEntitie {
  String? name;
  int? price;
  String? description;
  String? categoryid;

  ProductDataEntitie(
      {this.name, this.price, this.description, this.categoryid});
  void setName(String? value) => name = value;
  void setPrice(int? value) => price = value;
  void setDescription(String? value) => description = value;
  void setCategoryId(String? value) => categoryid = value;

  @override
  String toString() =>
      " ProductDataModel(name: $name, price: $price, description: $description, categoryid: $categoryid)";

  Map<String, dynamic> toMap() {
    return {
      'product': {
        'name': name,
        'price': price,
        'description': description,
      },
    };
  }

  String toJson() => json.encode(toMap());
}
