import 'package:campus_portal_ustp_v2/models/buildings.dart';
import 'package:campus_portal_ustp_v2/screens/roomscreen.dart';
import 'package:campus_portal_ustp_v2/services/firestorebuildingservices.dart';
import 'package:campus_portal_ustp_v2/widgets/buildinglist.dart';
import 'package:campus_portal_ustp_v2/widgets/mainappbar.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:provider/provider.dart';

class BuildingScreen extends StatelessWidget {
  List<Building> buildings = [];

  @override
  Widget build(BuildContext context) {
    BuildingServices buildingServices =
        Provider.of<BuildingServices>(context, listen: false);
    buildings = buildingServices.getBuildings();
    return Scaffold(
      appBar: MainAppBar(),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                'List of Buildings',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
            ),
            Expanded(
                child: ListView.builder(
              padding: const EdgeInsets.only(bottom: 50),
              itemCount: buildings.length,
              itemBuilder: (BuildContext ctx, int index) {
                return BuildingList(
                    buildings: buildings[index],
                    onCardClick: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Roomscreen(
                                    selectedCategory: this.buildings[index],
                                  )));
                    });
              },
            ))
          ],
        ),
      ),
    );
  }
}
