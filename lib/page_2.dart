import 'package:flutter/material.dart';
import 'package:iiuc_student_portal/page_1.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("Page 2",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 33,
              ),),
          ),
          Padding(
            padding: const EdgeInsets.all(21.0),
            child: GestureDetector(
              onTap: (){
                //go to page1
                //Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (builder) => Page1()));
                  Navigator.pop(context);
              },
              child: Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.black,
                ),
                child: Center(
                  child: Text("go to page1",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
