import 'package:campus_portal_ustp_v2/helpers/utils.dart';
import 'package:campus_portal_ustp_v2/models/floorplan_model.dart';
import 'package:campus_portal_ustp_v2/screens/roomdetails.dart';
import 'package:campus_portal_ustp_v2/screens/roomscreen.dart';
import 'package:campus_portal_ustp_v2/screens/splashscreen.dart';
import 'package:campus_portal_ustp_v2/screens/mainscreen.dart';
import 'package:campus_portal_ustp_v2/screens/mapscreen/floorplan_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'screens/buildingscreen.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<FloorPlanModel>(
            create: (context) => FloorPlanModel()),
      ],
      child: MaterialApp(
        theme: ThemeData(fontFamily: 'SFProDisplay'),
        debugShowCheckedModeBanner: false,
        home: SplashScreen(duration: 2, goToPage: mainscreen()),
        //home: SearchRoom(),
      ),
    );
    //  MaterialApp(
    //   theme: ThemeData(fontFamily: 'SFProDisplay'),
    //   debugShowCheckedModeBanner: false,
    //   //home: WelcomPage(),
    //   home: SplashScreen(duration: 2, goToPage: mainscreen()),
    //   // home: RoomDetails(
    //   //   subCategory: Utils.getMockedBuildings()[0].subCategories![0],
    //   // ),
    // );
  }
}



// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         children: <Widget>[
//           Container(child: SizedBox(height: 130, child: Text('Campus Portal'))),
//           SizedBox(
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.values[2],
//               children: <Widget>[
//                 Center(
//                   child: SizedBox(
//                     width: 135,
//                     height: 75,
//                     child: RaisedButton(
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10)),
//                       child: Row(children: <Widget>[
//                         Text(
//                           "Map",
//                           style: TextStyle(
//                               color: Colors.deepOrange[900],
//                               fontSize: 25,
//                               fontStyle: FontStyle.italic,
//                               fontWeight: FontWeight.bold),
//                         ),
//                         Icon(
//                           Icons.collections_bookmark,
//                           size: 35,
//                           color: Colors.grey[600],
//                         ),
//                       ]),
//                       color: Colors.white,
//                       elevation: 10,
//                       onPressed: () {
//                         //   run = true;
//                         //Navigator.pushNamed(context, '/myList');
//                       },
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 15,
//                 ),
//                 Column(
//                   children: <Widget>[
//                     Center(
//                       child: SizedBox(
//                         width: 135,
//                         height: 75,
//                         child: RaisedButton(
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10)),
//                           child: Row(children: <Widget>[
//                             Text(
//                               "Buildings",
//                               style: TextStyle(
//                                   color: Colors.deepOrange[900],
//                                   fontSize: 23,
//                                   fontStyle: FontStyle.italic,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                             Icon(
//                               Icons.access_time,
//                               size: 35,
//                               color: Colors.grey[600],
//                             ),
//                           ]),
//                           color: Colors.white,
//                           elevation: 10,
//                           onPressed: () {
//                             //InitializeList();
//                             // trying();
//                             //  run = true;

//                             // Navigator.pushNamed(context, '/historyscreen');
//                           },
//                         ),
//                       ),
//                     )
//                   ],
//                 )
//               ],
//             ),
//           ),
//           SizedBox(
//             height: 12,
//           ),
//           SizedBox(
//             width: 290,
//             height: 50,
//             child: RaisedButton(
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10)),
//               color: Colors.orange[900],
//               elevation: 10,
//               onPressed: () {
//                 Navigator.pushNamed(context, 'Room Finder');
//               },
//               child: Text(
//                 "Room Finder",
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 30,
//                   fontStyle: FontStyle.italic,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(height: 46),

//           // Expanded(
//           //     child: Align(
//           //   alignment: Alignment.bottomCenter,
//           //   child: Image.asset(
//           //     'assets/app_lower_graphics_50_50.png',
//           //     alignment: Alignment.bottomCenter,
//           //     height: 220,
//           //   ),
//           // ))
//         ],
//       ),
//     );
//   }
// }







// class DatabaseTest extends StatelessWidget {
//   final Stream<QuerySnapshot> buildings =
//       FirebaseFirestore.instance.collection('buildings').snapshots();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Test Database'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Container(
//                 height: 250,
//                 padding: const EdgeInsets.symmetric(vertical: 20),
//                 child: StreamBuilder<QuerySnapshot>(
//                     stream: buildings,
//                     builder: (BuildContext context,
//                         AsyncSnapshot<QuerySnapshot> snapshot) {
//                       if (snapshot.hasError) {
//                         return const Text('Something went wrong.');
//                       }
//                       if (snapshot.connectionState == ConnectionState.waiting) {
//                         return const Text('Loading...');
//                       }
//                       final data = snapshot.requireData;
//                       return ListView.builder(
//                         itemCount: data.size,
//                         itemBuilder: (context,index){
//                           return Text('sample data: ${data.docs[index]['name']}');
//                         });
//                     })),
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               'none',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// class MyHomePage extends StatefulWidget {
  
//   final Stream<QuerySnapshot> buildings =
//       FirebaseFirestore.instance.collection('buildings').snapshots();


//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Test Database'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               'none',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
