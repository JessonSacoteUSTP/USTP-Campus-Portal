import 'package:campus_portal_ustp_v2/services/firestorebuildingservices.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  int? duration = 0;
  Widget? goToPage;
  SplashScreen({this.goToPage, this.duration});

  @override
  Widget build(BuildContext context) {
    BuildingServices buildingService =
        Provider.of<BuildingServices>(context, listen: false);
    Future.delayed(Duration(seconds: this.duration!), () async {
      FirebaseApp app = await Firebase.initializeApp();
      buildingService.getBuildingsCollectionFromFirebase()
      .then((value) => Navigator.push(
          context, MaterialPageRoute(builder: (context) => this.goToPage!)));
      
    });
    return Scaffold(
      body: Container(
          color: Colors.white,
          alignment: Alignment.center,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Text('USTP Campus Portal'),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(top: 88),
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                        Colors.black.withOpacity(0.5)),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
