import 'package:campus_portal_ustp_v2/models/floorplan_model.dart';
import 'package:campus_portal_ustp_v2/models/models.dart';
//import 'package:ustp_campus_portal/core/models/models.dart';
//import 'package:ustp_campus_portal/core/viewmodels/floorplan_model.dart';
import 'package:campus_portal_ustp_v2/screens/mapscreen/360_photo_screen.dart';
//import 'package:campus_portal_ustp_v2/view/screens/search_room.dart';
import 'package:campus_portal_ustp_v2/helpers/global.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GridViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final model = Provider.of<FloorPlanModel>(context);

    //const GridViewWidget({Key? key, required this.tileLights}) : super(key: key);

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //crossAxisSpacing: 2.0,
        //mainAxisSpacing: 2.0,
        crossAxisCount: 3,
      ),
      itemCount: 9,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        int currentTile = index + 1;
        String imagelink = 'asa';

        List<Light> tileLights =
            model.lights.where((item) => item.tile == currentTile).toList();

        return Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              color: Colors.white,
              child: Image.asset(
                'images/tile_0$currentTile.png',
              ),
            ),
            // model.isScaled
            //    ?
            Stack(
              children: List.generate(
                tileLights.length,
                (idx) {
                  return Transform.translate(
                    offset: Offset(
                      size.width * tileLights[idx].position![0],
                      size.width * tileLights[idx].position![1],
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        IconButton(
                            icon: Icon(
                              Icons.brightness_1_rounded,
                            ),
                            color: Colors.red,
                            iconSize: 8,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Photo360Screen(
                                            image: tileLights[idx].image!,
                                          )));
                            }

                            //onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>Photo360Screen(todo: tileLights[idx].image)))
                            ),

                        // CircleAvatar(
                        //   radius: 5,
                        //   backgroundColor: Colors.amber,
                        //   child: IconButton(
                        //       color: Colors.black,
                        //     //  padding: EdgeInsets.all(20),
                        //       iconSize: 5,
                        //       icon: Icon(Icons.shop),
                        //       onPressed: () => print('pressed')
                        //       ),
                        // ),

                        // Container(
                        //   padding: EdgeInsets.all(50),
                        //   alignment: Alignment.center,
                        //   child: IconButton(
                        //     icon: Icon(
                        //       Icons.directions_transit,
                        //     ),
                        //     iconSize: 5,
                        //     color: Colors.red,
                        //     splashColor: Colors.purple,
                        //     onPressed: () {},
                        //   ),
                        // ),
                        // RawMaterialButton(
                        //   onPressed: () {},
                        //   elevation: 2.0,
                        //   fillColor: Colors.red,
                        //   child: Icon(
                        //     Icons.pause,
                        //     size: 5,
                        //   ),
                        //   padding: EdgeInsets.all(5.0),
                        //   shape: CircleBorder(),
                        // ),
                        // CircleAvatar(
                        //   backgroundColor: tileLights[idx].status ? Colors.greenAccent : Colors.white,
                        //   radius: 5.0,

                        //   child: Center(
                        //     child: Icon(
                        //       Icons.lightbulb_outline,
                        //       color: Global.blue,
                        //       size: 7,
                        //     ),
                        //   ),
                        // ),
                        Transform(
                          transform: Matrix4.identity()..translate(18.0),
                          //imagelink=tileLights[idx].image,
                          child: Text(
                            tileLights[idx].name!,
                            style: TextStyle(fontSize: 6.0, color: Colors.red),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
            //:
            // CircleAvatar(
            //     backgroundColor: Colors.white,
            //     child: Text(
            //       '${tileLights.length}',
            //       style: TextStyle(
            //         color: Global.blue,
            //       ),
            //     ),
            //   ),
          ],
        );
      },
    );
  }
}
