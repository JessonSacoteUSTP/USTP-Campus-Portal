import 'package:campus_portal_ustp_v2/models/buildings.dart';
import 'package:flutter/material.dart';

class BuildingList extends StatelessWidget {
  Building? buildings;
  Function? onCardClick;
  BuildingList({this.buildings, this.onCardClick});
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: () {
        this.onCardClick!();
      },
      child:Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
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
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Text(
                      this.buildings!.name!,
                      style: const TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ],
                ),
              ))
        ],
      ),
    )
    );
  }
}
