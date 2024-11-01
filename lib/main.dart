import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iiuc_student_portal/pages/home.dart';
import 'package:iiuc_student_portal/pages/test.dart';

import 'pages/crazy_animation.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    int i = 0;
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: CrazyAnimation(),
    );
  }
}