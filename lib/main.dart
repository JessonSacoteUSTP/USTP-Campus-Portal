// @dart=2.9
import 'package:campus_portal_ustp_v2/models/floorplan_model.dart';
import 'package:campus_portal_ustp_v2/screens/splashscreen.dart';
import 'package:campus_portal_ustp_v2/screens/mainscreen.dart';
import 'package:campus_portal_ustp_v2/services/firestorebuildingservices.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<FloorPlanModel>(
            create: (context) => FloorPlanModel()),
        Provider(create: (_)=>BuildingServices())
      ],
      child: MaterialApp(
        theme: ThemeData(fontFamily: 'SFProDisplay'),
        debugShowCheckedModeBanner: false,
        home: SplashScreen(duration: 2, goToPage: mainscreen()),
      ),
    );
  }
}


