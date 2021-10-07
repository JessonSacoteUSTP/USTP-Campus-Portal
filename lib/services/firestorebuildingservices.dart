import 'package:campus_portal_ustp_v2/models/buildings.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

class BuildingServices {
  FirebaseFirestore? _instance;
  List<Building> _buildings = [];

  List<Building> getBuildings() {
    return _buildings;
  }

  Future<void> getBuildingsCollectionFromFirebase() async {
    _instance = FirebaseFirestore.instance;
    CollectionReference buildings = _instance!.collection('ustp_campus_portal');

    DocumentSnapshot snapshot = await buildings.doc('buildings').get();
    var data = snapshot.data() as Map;
    var buildingsData = data['buildings'] as List<dynamic>;

    buildingsData.forEach((buildData) {});
  }
}
