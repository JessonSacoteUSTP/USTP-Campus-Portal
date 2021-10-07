//import 'package:ustp_campus_portal/core/models/models.dart';
import 'package:campus_portal_ustp_v2/models/models.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:panorama/panorama.dart';

class Photo360Screen extends StatelessWidget {

final String image;

  // receive data from the FirstScreen as a parameter
  Photo360Screen({Key? key, required this.image}) : super(key: key);


//const Photo360Screen({Key? key, required this.todo}) : super(key: key);

  // Declare a field that holds the Todo.
 // final Light todo;


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
