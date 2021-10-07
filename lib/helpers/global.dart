import 'package:flutter/material.dart';

abstract class Global {
  static const Color blue = const Color(0xff4A64FE);

  static const List lights = [
    {
      'location': 'Kitchen',
      'name': 'Registrar',
      'status': false,
      'position': [0.0, 0.0],
      'tile': 5,
      'image': 'images/Registrar_360.JPG',
    },
    {
      'location': 'Office 01',
      'name': 'LED002',
      'status': true,
      'position': [-0.07, 0.0],
      'tile': 2,
    },
    {
      'location': 'Meeting room 01',
      'name': 'LED003',
      'status': false,
      'position': [0.08, 0.0],
      'tile': 2,
    },
    {
      'location': 'Office 02',
      'name': 'LED004',
      'status': true,
      'position': [0.0, 0.0],
      'tile': 3,
    },
    {
      'location': 'Box Office',
      'name': 'Gymnasium',
      'status': true,
      'position': [0.03, -0.02],
      'tile': 5,
      'image': 'images/Gym_360.JPG',
    },
    {
      'location': 'Entrance',
      'name': 'ICT building',
      'status': false,
      'position': [-0.10, 0.0],
      'tile': 6,
      'image': 'images/ICT_360.JPG',
    },
    {
      'location': 'Entrance',
      'name': 'LED007',
      'status': true,
      'position': [-0.05, 0.1],
      'tile': 4,
    },
  ];
}
