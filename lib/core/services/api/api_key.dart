part of '../../import/app_import.dart';

class ApiKey {
  static const String baseUrl = "https://api.chec.io/v1/";
  static String urlBulder(String value) {
    return baseUrl + value;
  }

  static const String categories = "categories";
  static const String assets = "assets";
  static const String products = "products";
}
