import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iiuc_student_portal/home.dart';
import 'package:iiuc_student_portal/page_1.dart';
import 'package:iiuc_student_portal/test.dart';

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
      home: Home(),
    );
  }
}