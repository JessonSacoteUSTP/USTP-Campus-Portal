
import 'package:campus_portal_ustp_v2/models/models.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:panorama/panorama.dart';

class Photo360Screen extends StatelessWidget {

final String image;

  Photo360Screen({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '360 screen',
        home: Scaffold(
          appBar: AppBar(
            title: Text('360 Screen'),
          ),
          body: Panorama(child: Image.asset('$image'),),
        )
        );
  }
}
