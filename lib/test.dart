import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
   RxInt i = 0.obs;
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        ++i;
      },
      child: Icon(Icons.plus_one),
      ),
      body: Center(
        child: Obx(() => Text("$i",
          style: TextStyle(
            fontSize: 31,
            fontWeight: FontWeight.w900,
            color: Colors.black,
          ),
        ),)
      ),
    );
  }
}
