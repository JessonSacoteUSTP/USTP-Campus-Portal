// import 'package:firebase_core/firebase_core.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';


// class SearchRoom extends StatefulWidget {
//   const SearchRoom({
//     Key key,
//   }) : super(key: key);

//   @override
//   State<SearchRoom> createState() => _SearchRoomState();
// }

// class _SearchRoomState extends State<SearchRoom> {
//   @override
//   // Widget _buildListItem(BuildContext context, DocumentSnapshot document) {
//   //   return ListTile(
//   //     title: Row(
//   //       children: [Expanded(child: Text(document['name']))],
//   //     ),
//   //   );
//   // }

//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('test data'),
          
//         ),
        
//         body: Center(
//           child: StreamBuilder(
            
//             stream:
//                 FirebaseFirestore.instance.collection('buildings').snapshots(),
//             builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
//                if (!snapshot.hasData) return const Text('Loading...');
//               return ListView(
//                 children: snapshot.data.docs.map((buildings) {
//                 return Center(
//                   child: ListTile(
                    
//                     title: Text(buildings['name']),
                    
//                 ),
//                 );
//                 }).toList(),
//               );
//               // return ListView.builder(
//               //   itemExtent: 80.0,
//               //   itemCount: snapshot.data.docs.length,
//               //   itemBuilder: (context, index) =>
//               //       _buildListItem(context, snapshot.data.docs[index]),
//               // );
                
//             },
//           ),
//         ));
//   }
// }
