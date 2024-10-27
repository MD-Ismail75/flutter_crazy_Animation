import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iiuc_student_portal/widgets/menu_items.dart';
import 'package:iiuc_student_portal/widgets/top_card.dart';

class CrazyAnimation extends StatelessWidget {
  const CrazyAnimation({super.key});

  @override
  Widget build(BuildContext context) {

    var size = Get.size;

    RxBool menuClicked = false.obs;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(21.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: size.width*.1,),
                GestureDetector(
                    onTap: (){
                          menuClicked.value = !menuClicked.value;
                    },
                    child: Icon(Icons.menu)),
                SizedBox(height: size.width * .075,),
            
                SizedBox(
                  width: size.width,
                  height: size.width * 1.1,
                  child: Obx(() => Stack(
                    children: [
                      TopCard(menuClicked: menuClicked, defaultWidth: size.width * .44, dynamicWidth: size.width, defaultHeight: size.width * 1.1, dynamicHeight: size.width * 1.1, colors: Colors.black, imageAsset: "assets/images/ismail.jpg", replacementWidget: const SizedBox()),
                      // AnimatedContainer(
                      //   duration: const Duration(milliseconds: 355),
                      //   curve: Curves.easeOut,
                      //
                      //   width: menuClicked.value?size.width:size.width * .44,
                      //   height: size.width * 1.1,
                      //   decoration: BoxDecoration(
                      //     color: Colors.black,
                      //     borderRadius: BorderRadius.circular(menuClicked.value?55:100),
                      //   ),
                      //
                      //   child: AnimatedOpacity(
                      //     duration: const Duration(milliseconds: 355),
                      //     curve: Curves.easeOut,
                      //     opacity: menuClicked.value?0:1,
                      //     child: ClipRRect(
                      //       borderRadius: BorderRadius.circular(100),
                      //       child: Image.asset("assets/images/ismail.jpg",
                      //       fit: BoxFit.cover,
                      //       ),
                      //     ),
                      //   ),
                      // ),

                      AnimatedPositioned(
                        duration: const Duration(milliseconds: 355),
                        curve: Curves.easeOut,
                        right: 0,
                        top: menuClicked.value?65:0,
                        child: Padding(
                          padding:  EdgeInsets.all(menuClicked.value?17:0),
                          child: TopCard(menuClicked: menuClicked, defaultWidth: size.width * .44, dynamicWidth: size.width-42-34, defaultHeight: size.width * 0.65, dynamicHeight: size.width * 1.1 - 65 - 34, colors: Color(0xff595757), imageAsset: "assets/images/ismail2.png",
                              replacementWidget:MenuItems(menuClicked: menuClicked),
                          //     AnimatedOpacity(
                          //   duration: const Duration(milliseconds: 355),
                          //   curve: Curves.easeOut,
                          //   opacity: menuClicked.value?1:0,
                          //   child: Column(
                          //     mainAxisAlignment: MainAxisAlignment.center,
                          //     crossAxisAlignment: CrossAxisAlignment.center,
                          //     children: [
                          //       Text.rich(
                          //         TextSpan(
                          //             children:[
                          //               WidgetSpan(child: Icon(Icons.shopping_cart,color: Colors.white,size: size.width*.065,),alignment: PlaceholderAlignment.middle),
                          //               TextSpan(
                          //                   text: "  items in cart",
                          //                   style: TextStyle(
                          //                     color: Colors.white,
                          //                     fontWeight: FontWeight.w900,
                          //                     fontSize: size.width*.045,
                          //                   )
                          //               )
                          //             ]
                          //         ),
                          //         textAlign: TextAlign.center,
                          //       ),
                          //
                          //       Padding(
                          //         padding: const EdgeInsets.all(21.0),
                          //         child: Text.rich(
                          //           TextSpan(
                          //               children:[
                          //                 WidgetSpan(child: Icon(Icons.history_toggle_off,color: Colors.white,size: size.width*.065,),alignment: PlaceholderAlignment.middle),
                          //                 TextSpan(
                          //                     text: "  purchase history",
                          //                     style: TextStyle(
                          //                       color: Colors.white,
                          //                       fontWeight: FontWeight.w900,
                          //                       fontSize: size.width*.045,
                          //                     )
                          //                 )
                          //               ]
                          //           ),
                          //           textAlign: TextAlign.center,
                          //         ),
                          //       ),
                          //
                          //       Text.rich(
                          //         TextSpan(
                          //             children:[
                          //               WidgetSpan(child: Icon(Icons.settings,color: Colors.white,size: size.width*.065,),alignment: PlaceholderAlignment.middle),
                          //               TextSpan(
                          //                   text: "  app settings",
                          //                   style: TextStyle(
                          //                     color: Colors.white,
                          //                     fontWeight: FontWeight.w900,
                          //                     fontSize: size.width*.045,
                          //                   )
                          //               )
                          //             ]
                          //         ),
                          //         textAlign: TextAlign.center,
                          //       ),
                          //
                          //     ],
                          //   ),
                          // )
                          ),

                          // AnimatedContainer(
                          //   duration: const Duration(milliseconds: 355),
                          //   curve: Curves.easeOut,
                          //   width: menuClicked.value?size.width-42-34 :size.width * .44,
                          //   height: menuClicked.value?size.width * 1.1 - 65 - 34 : size.width * 0.65,
                          //   decoration: BoxDecoration(
                          //     color: Color(0xff595757),
                          //     borderRadius: BorderRadius.circular(menuClicked.value?55:100),
                          //   ),
                          //
                          //     child: Stack(
                          //       alignment: Alignment.center,
                          //       children: [
                          //         ClipRRect(
                          //           borderRadius: BorderRadius.circular(100),
                          //            child: AnimatedOpacity(
                          //              duration: const Duration(milliseconds: 355),
                          //              curve: Curves.easeOut,
                          //               opacity: menuClicked.value?0:1,
                          //
                          //           child: Image.asset("assets/images/ismail2.png",
                          //             fit: BoxFit.cover,
                          //
                          //             width: size.width * .44,
                          //             height: size.width * .65,
                          //           ),
                          //         ),
                          //         ),
                          //
                          //         AnimatedOpacity(
                          //           duration: const Duration(milliseconds: 355),
                          //           curve: Curves.easeOut,
                          //           opacity: menuClicked.value?1:0,
                          //           child: Column(
                          //             mainAxisAlignment: MainAxisAlignment.center,
                          //             crossAxisAlignment: CrossAxisAlignment.center,
                          //             children: [
                          //               Text.rich(
                          //                 TextSpan(
                          //                     children:[
                          //                       WidgetSpan(child: Icon(Icons.shopping_cart,color: Colors.white,size: size.width*.065,),alignment: PlaceholderAlignment.middle),
                          //                       TextSpan(
                          //                           text: "  items in cart",
                          //                           style: TextStyle(
                          //                             color: Colors.white,
                          //                             fontWeight: FontWeight.w900,
                          //                             fontSize: size.width*.045,
                          //                           )
                          //                       )
                          //                     ]
                          //                 ),
                          //                 textAlign: TextAlign.center,
                          //               ),
                          //
                          //               Padding(
                          //                 padding: const EdgeInsets.all(21.0),
                          //                 child: Text.rich(
                          //                   TextSpan(
                          //                       children:[
                          //                         WidgetSpan(child: Icon(Icons.history_toggle_off,color: Colors.white,size: size.width*.065,),alignment: PlaceholderAlignment.middle),
                          //                         TextSpan(
                          //                             text: "  purchase history",
                          //                             style: TextStyle(
                          //                               color: Colors.white,
                          //                               fontWeight: FontWeight.w900,
                          //                               fontSize: size.width*.045,
                          //                             )
                          //                         )
                          //                       ]
                          //                   ),
                          //                   textAlign: TextAlign.center,
                          //                 ),
                          //               ),
                          //
                          //               Text.rich(
                          //                 TextSpan(
                          //                     children:[
                          //                       WidgetSpan(child: Icon(Icons.settings,color: Colors.white,size: size.width*.065,),alignment: PlaceholderAlignment.middle),
                          //                       TextSpan(
                          //                           text: "  app settings",
                          //                           style: TextStyle(
                          //                             color: Colors.white,
                          //                             fontWeight: FontWeight.w900,
                          //                             fontSize: size.width*.045,
                          //                           )
                          //                       )
                          //                     ]
                          //                 ),
                          //                 textAlign: TextAlign.center,
                          //               ),
                          //
                          //             ],
                          //           ),
                          //         ),
                          //       ],
                          //     ),
                          //   ),
                          ),
                        ),


                      AnimatedPositioned(
                        duration: const Duration(milliseconds: 355),
                        curve: Curves.easeOut,
                        right: menuClicked.value?17:0,
                        bottom: menuClicked.value?size.width * 1.1 - size.width*0.12 -17:0,

                        child: TopCard(menuClicked: menuClicked, defaultWidth: size.width * .44, dynamicWidth: size.width*0.12, defaultHeight: size.width * 0.43, dynamicHeight: size.width*0.12, colors: Colors.grey, imageAsset: "assets/images/ismail3.jpeg",
                            replacementWidget: AnimatedOpacity(
                              opacity: menuClicked.value?1:0,
                              duration: const Duration(milliseconds: 355),
                              curve: Curves.easeOut,
                              child: ClipRRect(
                                                        borderRadius: BorderRadius.circular(100),
                                                        child: Image.asset("assets/images/ismail3.jpeg",
                                                        fit: BoxFit.cover,
                                                        width: size.width*0.12,
                                                        height: size.height*0.12,
                                                        ),
                                                      ),
                            )),

                        // child: AnimatedContainer(
                        //   duration: const Duration(milliseconds: 355),
                        //   curve: Curves.easeOut,
                        //   width: menuClicked.value?size.width*0.12:size.width * .44,
                        //   height: menuClicked.value?size.width*0.12:size.width * 0.43,
                        //   decoration: BoxDecoration(
                        //     color: Colors.grey,
                        //     borderRadius: BorderRadius.circular(100),
                        //   ),
                        //   child: AnimatedOpacity(
                        //     duration: const Duration(milliseconds: 355),
                        //     curve: Curves.easeOut,
                        //     opacity: menuClicked.value?0:1,
                        //     child: ClipRRect(
                        //       borderRadius: BorderRadius.circular(100),
                        //       child: Image.asset("assets/images/ismail3.jpeg",
                        //         fit: BoxFit.cover,
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ),
                    ],
                  ),)
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
