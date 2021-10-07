import 'package:campus_portal_ustp_v2/helpers/utils.dart';
import 'package:campus_portal_ustp_v2/models/buildings.dart';
import 'package:campus_portal_ustp_v2/screens/roomscreen.dart';
import 'package:campus_portal_ustp_v2/widgets/buildinglist.dart';
import 'package:campus_portal_ustp_v2/widgets/mainappbar.dart';
import 'package:flutter/material.dart';

class BuildingScreen extends StatelessWidget {
  List<Building> buildings = Utils.getMockedBuildings();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: Drawer(),
      appBar:MainAppBar(),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                'List of Buildings',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
            ),
            Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.only(bottom: 50),
              itemCount: buildings.length,
              itemBuilder: (BuildContext ctx, int index) {
                return BuildingList(
                    buildings: buildings[index],
                    onCardClick: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Roomscreen(selectedCategory: this.buildings[index],)));
                    });

                // return Container(
                //   margin: EdgeInsets.only(left: 20, right: 20,top: 10,bottom: 10),
                //   height: 100,
                //   child: Stack(
                //     children: [
                //       // Positioned.fill(
                //       //   child: ClipRRect(
                //       //       borderRadius: BorderRadius.circular(20),
                //       //       child: Image.asset(
                //       //           'assets/imgs/' +
                //       //               buildings[index].imgName +
                //       //               '.png',
                //       //           fit: BoxFit.cover)),
                //       // ),
                //       Positioned(
                //         bottom: 0,
                //         left: 0,
                //         right: 0,
                //         child: Container(
                //           height: 100,
                //           decoration: BoxDecoration(
                //               borderRadius: BorderRadius.only(
                //                 bottomLeft: Radius.circular(20),
                //                 bottomRight: Radius.circular(20),
                //               ),
                //               gradient: LinearGradient(
                //                   begin: Alignment.bottomCenter,
                //                   end: Alignment.topCenter,
                //                   colors: [
                //                     Colors.black.withOpacity(0.7),
                //                     Colors.transparent
                //                   ])),
                //         ),
                //       ),
                //      Positioned(
                //        bottom: 0,
                //        child:  Padding(
                //          padding: const EdgeInsets.all(10),
                //          child: Row(
                //           children: [
                //             Text(
                //               buildings[index].name,
                //               style: TextStyle(color: Colors.white, fontSize: 25),
                //             ),
                //           ],
                //       ),
                //        ))
                //     ],
                //   ),
                // );
              },
            ))
          ],
        ),
      ),
    );
  }
}
