import 'package:campus_portal_ustp_v2/screens/buildingscreen.dart';
import 'package:campus_portal_ustp_v2/screens/mapscreen/floorplan_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class mainscreen extends StatelessWidget {
  const mainscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Stack(
          children: [
            Positioned.fill(
                child: Image.asset(
              'assets/imgs/app_bg.png',
              fit: BoxFit.cover,
            )),
            Center(
              child: Column(
                children: <Widget>[
                  Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(top: 80, left: 25),
                          child: Text(
                            'Campus\nPortal',
                            style: TextStyle(
                              color: Colors.yellow[800],
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                            ),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FlatButton(
                                minWidth: 150.0,
                                height: 150.0,
                                onPressed: () {
                                   Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            FloorPlanScreen()));
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                color: Colors.blue[800],
                                //  padding: EdgeInsets.all(60),
                                child: Text(
                                  'Map',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                            SizedBox(
                              width: 10,
                            ),
                            FlatButton(
                                minWidth: 150.0,
                                height: 150.0,
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                color: Colors.blue[800],
                                //  padding: EdgeInsets.all(60),
                                child: Text(
                                  '360 Tour',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(25, 10, 20, 25),
                          child: FlatButton(
                              minWidth: 200.0,
                              height: 80.0,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            BuildingScreen()));
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              color: Colors.blue[800],
                              //padding: EdgeInsets.fromLTRB(60, 25, 60, 25),
                              child: Text(
                                'Room Finder',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
