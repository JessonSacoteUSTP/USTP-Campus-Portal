import 'package:campus_portal_ustp_v2/models/buildings.dart';

class SubCategory extends Building {
  SubCategory({String? name}) : super(name: name);

  factory SubCategory.fromJson(Map<String, dynamic> json) {
    return SubCategory(
      name: json['name']
    );
  } 
  static List<SubCategory>? fromJsonArray(List<dynamic> jsonArray) {
    List<SubCategory> subCategoriesFromJson = [];

    jsonArray?.forEach((jsonData) {
      subCategoriesFromJson.add(SubCategory.fromJson(jsonData));
    });
    return subCategoriesFromJson;
  }
}
