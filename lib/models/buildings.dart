import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:campus_portal_ustp_v2/models/rooms.dart';

class Building {
  String? name;
  // String icon;
  // Color color;
  String? imgName;
  List<Building>? subCategories;

  Building(
      {this.name,
      // required this.icon,
      // required this.color,
      this.imgName,
      this.subCategories});

  // factory Buildings.fromJson(Map<String, dynamic> json) {
  //   return Buildings(
  //     name: json['name'],
  //     subCategories: SubCategory.fromJsonArray(json['subCategories'])
  //   );
  // }
}
