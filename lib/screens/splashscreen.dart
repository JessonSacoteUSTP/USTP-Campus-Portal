import 'package:flutter/material.dart';


class SplashScreen extends StatelessWidget {
  int? duration = 0;
  Widget? goToPage;
  SplashScreen({this.goToPage, this.duration});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: this.duration!), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => this.goToPage!));
    });
    return Scaffold(
      body: Container(
          color: Colors.white,
          alignment: Alignment.center,
          child: Text('USTP Campus Portal')),
    );
  }
}