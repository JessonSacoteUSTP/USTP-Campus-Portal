import 'package:campus_portal_ustp_v2/helpers/appcolors.dart';
import 'package:campus_portal_ustp_v2/helpers/iconhelper.dart';
import 'package:campus_portal_ustp_v2/models/buildings.dart';
import 'package:campus_portal_ustp_v2/models/rooms.dart';
import 'package:flutter/cupertino.dart';

class Utils {
  static List<Building> getMockedBuildings() {
    return [
      Building(
        //color: AppColors.MEATS,
        name: "ICT Building",
        imgName: "ICT_1",
        //icon: IconFontHelper.MEATS,
        subCategories: [
          SubCategory(
            name: "09-101"
          ),
          SubCategory(
            name: "09-102"
          ),
          SubCategory(
            name: "09-103"
          ),
        ]
      ),
      Building(
        //color: AppColors.PASTRIES,
        name: "Science Complex",
        //imgName: "cat2",
        //icon: IconFontHelper.PASTRIES,
        subCategories: []
      ),
      Building(
        //color: AppColors.SEEDS,
        name: "NAme 3",
        //imgName: "cat3",
        //icon: IconFontHelper.SEEDS,
        subCategories: []
      ),
      Building(
        //color: AppColors.SPICES,
        name: "NAme 4",
        //imgName: "cat4",
        //icon: IconFontHelper.SPICES,
        subCategories: []
      ),
    ];
  }
}
