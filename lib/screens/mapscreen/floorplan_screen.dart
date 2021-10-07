import 'package:campus_portal_ustp_v2/models/floorplan_model.dart';
import 'package:campus_portal_ustp_v2/widgets/mapwidget/appbar_widget.dart';
import 'package:campus_portal_ustp_v2/widgets/mapwidget/gridview_widget.dart';
import 'package:campus_portal_ustp_v2/widgets/mapwidget/overlay_widget.dart';
import 'package:campus_portal_ustp_v2/widgets/mapwidget/raw_gesture_detector_widget.dart';
import 'package:campus_portal_ustp_v2/widgets/mapwidget/reset_button_widget.dart';
// import 'package:ustp_campus_portal/core/viewmodels/floorplan_model.dart';
// import 'package:ustp_campus_portal/view/shared/global.dart';
// import 'package:ustp_campus_portal/view/widgets/appbar_widget.dart';
// import 'package:ustp_campus_portal/view/widgets/gridview_widget.dart';
// import 'package:ustp_campus_portal/view/widgets/overlay_widget.dart';
// import 'package:ustp_campus_portal/view/widgets/raw_gesture_detector_widget.dart';
// import 'package:ustp_campus_portal/view/widgets/reset_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FloorPlanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<FloorPlanModel>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBarWidget(),
      ),
      body: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: Container(
          color: Colors.white,
          child: Center(
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                RawGestureDetectorWidget(
                  child: GridViewWidget(),
                ),
                model.hasTouched ? ResetButtonWidget() : OverlayWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
