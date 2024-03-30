part of '../../../../core/import/app_import.dart';

@HiveType(typeId: 0)
class CategoryEntity extends HiveObject {
  @HiveField(0)
  final int? id;
  @HiveField(1)
  final String? name;
  @HiveField(2)
  final String? image;
  @HiveField(3)
  final DateTime? creationAt;
  @HiveField(4)
  final DateTime? updatedAt;
  CategoryEntity({
    required this.id,
    required this.name,
    required this.image,
    required this.creationAt,
    required this.updatedAt,
  });
}
