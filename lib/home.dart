import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool shouldShowAllCourses = false;

  List<String> codes = [], names = [];

  void fetchCourseCodes(){
    //gets the course codes from an API call and assigns those to codes = []

    codes = ["CSE-4100","CSE-4805","CSE-1121","CSE-2301","CSE-4100","CSE-4805","CSE-1121","CSE-2301"];


  }

  void fetchCourseNames(){
    names = ["Computer Algorithm","Image Processing and Pattern Recognation","Computer Programming-2","Theory of Computing","Computer Algorithm","Image Processing and Pattern Recognation","Computer Programming-2","Theory of Computing"];
  }

  List<Widget>generateCourseUI(List<String>list, var size){
    List<Widget>w = [];
    int limit = shouldShowAllCourses?list.length:3;

    for(int i=0; i<limit;i++)
      w.add(  Text(
        list[i],
        style: TextStyle(
            fontSize: size.width * .041
        ),
      ),);
    return w;
  }

  @override
  void initState() {
    //gets called when the screen comes to live for the first time.
    // TODO: implement initState
    super.initState();
    fetchCourseCodes();
    fetchCourseNames();
  }

  int i = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(11),
            child: SizedBox(
              width: size.width,
              height: size.height,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "i.PORTAL",
                      style: TextStyle(
                          fontWeight: FontWeight.w900, fontSize: size.width * .077),
                    ),
                    const SizedBox(
                      height: 21,
                    ),
                  shouldShowAllCourses ? const SizedBox():SizedBox(
                    child: Column(
                      children: [
                        Container(
                          width: size.width * .31,
                          height: size.width * .31,
                          decoration: BoxDecoration(
                            color: Colors.teal,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                "assets/images/ismail.jpg",
                                fit: BoxFit.cover,
                              )),
                        ),
                        const SizedBox(
                          height: 11,
                        ),
                        Text(
                          "MD.Ismail",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: size.width * .055),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(21),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: size.width * .1,
                                  width: size.width * .41,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(13),
                                      color: Colors.teal),
                                  child: Center(
                                    child: Text(
                                      "CGPA:3.78",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: size.width * .045),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 11,
                                ),
                                Container(
                                  height: size.width * .1,
                                  width: size.width * .41,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(13),
                                      color: Colors.teal),
                                  child: Center(
                                    child: Text(
                                      "Semester: 8th",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: size.width * .045),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Text(
                          "+8801690068050",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: size.width * .045),
                        ),

                        Text("ismail220285@gmail.com",
                          style: TextStyle(color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: size.width * .045,
                              fontStyle: FontStyle.italic
                          ),
                        ),

                      ],
                    ),
                  ),
                    Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 21.0,vertical: 11.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text.rich(
                              TextSpan(
                                  children: [
                                    WidgetSpan(child: Icon(Icons.local_fire_department_rounded),
                                        alignment: PlaceholderAlignment.middle
                                    ),
                                    TextSpan(
                                        text: "Current Courses",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: size.width * .055,
                                        )
                                    )
                                  ]
                              ),
                            ),
                            GestureDetector(
                              onTap:(){
                                 setState(() {
                                   shouldShowAllCourses = !shouldShowAllCourses;
                                 });
                              },
                              child: Text(shouldShowAllCourses?"Show Less":"Show All",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 17,
                                fontWeight: FontWeight.w900,
                              ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(21,0,21,21),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 555),
                        height: shouldShowAllCourses?size.width:size.width*0.4,
                        width: size.width,
                        //height: size.width,
                        // height: 535,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            color: Colors.grey.shade300
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(21),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Course Code",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: size.width * .049
                                      ),
                                    ),
                                    SizedBox(
                                      height: 11,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: generateCourseUI(codes, size),
                                    )
                                  ],
                                ),

                                SizedBox(
                                  width: 28,
                                ),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Course Name",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: size.width * .049
                                      ),
                                    ),
                                    SizedBox(
                                      height: 11,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: generateCourseUI(names, size),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
