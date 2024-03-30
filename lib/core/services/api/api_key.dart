part of '../../import/app_import.dart';

class ApiKey {
  static const String baseUrl = "https://api.escuelajs.co/api/v1/";
  static String urlBulder(String value) {
    return baseUrl + value;
  }

  static const String categories = "categories";
}
