import 'package:campus_portal_ustp_v2/models/floorplan_model.dart';
import 'package:campus_portal_ustp_v2/models/models.dart';
import 'package:campus_portal_ustp_v2/screens/mapscreen/360_photo_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GridViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final model = Provider.of<FloorPlanModel>(context);

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemCount: 9,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        int currentTile = index + 1;
   
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
                            icon: const Icon(
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
                            ),
                        Transform(
                          transform: Matrix4.identity()..translate(18.0),

                          child: Text(
                            tileLights[idx].name!,
                            style: const TextStyle(fontSize: 6.0, color: Colors.red),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        );
      },
    );
  }
}
