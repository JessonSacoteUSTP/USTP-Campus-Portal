import 'package:campus_portal_ustp_v2/models/buildings.dart';
import 'package:campus_portal_ustp_v2/models/rooms.dart';
import 'package:campus_portal_ustp_v2/widgets/mainappbar.dart';
import 'package:flutter/material.dart';

class RoomDetails extends StatelessWidget {
  Building? subCategory;

  RoomDetails({this.subCategory});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: Center(
        child: Text(this.subCategory!.name!),
      ),
    );

  }
}
