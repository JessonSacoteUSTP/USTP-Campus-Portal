import 'package:campus_portal_ustp_v2/helpers/global.dart';
//import 'package:ustp_campus_portal/view/shared/global.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      bottom: PreferredSize(
        preferredSize: Size.zero,
        child: Column(
          children: <Widget>[
            Text(
              'Campus Map',
              style: TextStyle(
                color: Global.blue,
                fontWeight: FontWeight.w900,
                fontSize: 16.0,
              ),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Global.blue,
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
