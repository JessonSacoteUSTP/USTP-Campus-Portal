import 'package:campus_portal_ustp_v2/helpers/global.dart';
import 'package:campus_portal_ustp_v2/models/floorplan_model.dart';
// import 'package:ustp_campus_portal/core/viewmodels/floorplan_model.dart';
// import 'package:ustp_campus_portal/view/shared/global.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ResetButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<FloorPlanModel>(context);
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: RaisedButton(
          elevation: 10.0,
          color: Global.blue,
          onPressed: () {
            model.reset();
          },
          child: Icon(
            Icons.refresh,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
