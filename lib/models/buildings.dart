import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:campus_portal_ustp_v2/models/rooms.dart';

class Building {
  String? name;
  String? imgName;
  List<Building>? subCategories;

  Building(
      {this.name,
      this.imgName,
      this.subCategories});

  factory Building.fromJson(Map<String, dynamic> json) {
    return Building(
      name: json['name'],
      subCategories: SubCategory.fromJsonArray(json['subCategories'])
    );
  }
}
