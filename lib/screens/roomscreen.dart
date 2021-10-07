//import 'package:campus_portal_ustp_v2/models/buildings.dart';
import 'package:campus_portal_ustp_v2/models/buildings.dart';
import 'package:campus_portal_ustp_v2/models/rooms.dart';
import 'package:campus_portal_ustp_v2/models/rooms.dart';
import 'package:campus_portal_ustp_v2/models/rooms.dart';
import 'package:campus_portal_ustp_v2/screens/roomdetails.dart';
import 'package:campus_portal_ustp_v2/widgets/mainappbar.dart';
import 'package:flutter/material.dart';

class Roomscreen extends StatelessWidget {
  Building? selectedCategory;

  Roomscreen({ this.selectedCategory});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MainAppBar(),
        body: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      selectedCategory!.name!,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                    padding: EdgeInsets.only(bottom: 50),
                    itemCount: selectedCategory!.subCategories!.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                          onTap: () {
                            var subCat = this.selectedCategory!.subCategories![index];
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => 
                                    RoomDetails(subCategory: this.selectedCategory!.subCategories![index]
                                    )
                                            )
                                            );
                          },
                          child: Container(
                            // Text(this.selectedRoom.rooms![index].name);
                            margin: EdgeInsets.only(
                                left: 20, right: 20, top: 10, bottom: 10),
                            height: 100,
                            child: Stack(
                              children: [
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    height: 100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                        ),
                                        gradient: LinearGradient(
                                            begin: Alignment.bottomCenter,
                                            end: Alignment.topCenter,
                                            colors: [
                                              Colors.black.withOpacity(0.7),
                                              Colors.transparent
                                            ])),
                                  ),
                                ),
                                Positioned(
                                    bottom: 0,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Row(
                                        children: [
                                          Text(
                                            selectedCategory!.subCategories![index].name!,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 25),
                                          ),
                                        ],
                                      ),
                                    ))
                              ],
                            ),
                          ));
                    }),
              )
            ],
          ),
        ));
  }
}
