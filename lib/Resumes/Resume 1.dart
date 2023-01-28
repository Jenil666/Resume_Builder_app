


import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Model/ModelData.dart';

class Resume1 extends StatefulWidget {
  const Resume1({Key? key}) : super(key: key);

  @override
  State<Resume1> createState() => _Resume1State();
}

class _Resume1State extends State<Resume1> {
  @override
  Widget build(BuildContext context) {
    ModelData m1 = ModalRoute.of(context)!.settings.arguments as ModelData;

   String m = "";
   String Hobby = "";

    // void initState()
    // {
    //   m = m1.intreast!;
    //   n = m1.hobby!;
    // }

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black))
              ),
              alignment: Alignment.topCenter,
              child: Text("Resume",style: TextStyle(fontSize: 30,color: Colors.black),),
            ),
            Expanded (
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 120,
                              width: 120,
                              child:Image.file(File("${m1.image}"),fit: BoxFit.fill,),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.black54,width: 2)
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 70,
                                    child: Text("Name",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),)),
                                SizedBox(width: 15,),
                                SizedBox(
                                  width: 100,
                                    child: Text("${m1.name} ${m1.surname}",style: TextStyle(color: Colors.black54,),))
                              ],
                            ),
                            SizedBox(height: 3,),

                            Row(
                              children: [
                                SizedBox(
                                    width: 70,
                                    child: Text("DOB",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                                SizedBox(width: 15,),
                                SizedBox(
                                    width: 100,
                                    child: Text("${m1.bdate}/${m1.bmonth}/${m1.byear}",style: TextStyle(color: Colors.black54,),))
                              ],
                            ),
                            SizedBox(height: 3,),

                            Row(
                              children: [
                                SizedBox(
                                    width: 70,
                                    child: Text("Address",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                                SizedBox(width: 15,),
                                SizedBox(
                                    width: 100,
                                    child: Text("${m1.address},${m1.city}",style: TextStyle(color: Colors.black54,),))
                              ],
                            ),
                            SizedBox(height: 3,),

                            Row(
                              children: [
                                SizedBox(
                                  width: 70,
                                    child: Text("Qualification",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),)),
                                SizedBox(width: 15,),
                                SizedBox(
                                  width: 100,
                                    child: Text("${m1.qualification}",style: TextStyle(color: Colors.black54,),))
                              ],
                            ),
                            SizedBox(height: 3,),

                            Row(
                              children: [
                                SizedBox(
                                  width: 70,
                                    child: Text("Nationality",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                                SizedBox(width: 15,),
                                SizedBox(
                                  width: 100,
                                    child: Text("${m1.nationality}",style: TextStyle(color: Colors.black54,),))
                              ],
                            ),
                            SizedBox(height: 3,),

                            Row(
                              children: [
                                SizedBox(
                                  width: 70,
                                    child: Text("Gender",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                                SizedBox(width: 15,),
                                SizedBox(
                                  width: 100,
                                    child: Text("${m1.gender} ",style: TextStyle(color: Colors.black54,),))
                              ],
                            ),
                            SizedBox(height: 3,),

                            Row(
                              children: [
                                SizedBox(
                                  width:70,
                                    child: Text("Address",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                                SizedBox(width: 15,),
                                SizedBox(
                                  width: 100,
                                    child: Text("${m1.address}",style: TextStyle(color: Colors.black54,),))
                              ],
                            ),
                            SizedBox(height: 3,),

                            Row(
                              children: [
                                SizedBox(
                                  width:70,
                                    child: Text("Phone NO.",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                                SizedBox(width: 15,),
                                SizedBox(
                                  width: 100,
                                    child: Text("${m1.phone}",style: TextStyle(color: Colors.black54,),))
                              ],
                            ),
                            SizedBox(height: 3,),

                            Row(
                              children: [
                                SizedBox(
                                  width:70,
                                    child: Text("E-mail",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                                SizedBox(width: 15,),
                                SizedBox(
                                  width: 100,
                                    child: Text("${m1.email}",style: TextStyle(color: Colors.black54,),))
                              ],
                            ),
                            SizedBox(height: 3,),

                            Row(
                              children: [
                                SizedBox(
                                    width:70,
                                    child: Text("Languages Known",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                                SizedBox(width: 15,),
                                SizedBox(
                                    width: 100,
                                    child: Text("${m1.language1}\n${m1.language2}\n${m1.language3}",style: TextStyle(color: Colors.black54,),))
                              ],
                            ),
                            SizedBox(height: 3,),

                            m1.hobby == ""?Container():Row(
                              children: [
                                SizedBox(width: 70,child: Text("Hobby",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                                SizedBox(width: 15,),
                                SizedBox(width: 100,child: Text("${m1.hobby}  ${m1.city}",style: TextStyle(color: Colors.black54,),))
                              ],
                            ),
                            SizedBox(height: 3,),

                            SizedBox(height: 3,),

                            m1.intreast == ""?Container():Row(
                              children: [
                                SizedBox(
                                    width:70,
                                    child: Text("Intreast",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                                SizedBox(width: 15,),
                                SizedBox(
                                    width: 100,
                                    child: Text("${m1.intreast}",style: TextStyle(color: Colors.black54,),))
                              ],
                            ),
                            SizedBox(height: 3,),

                            m1.res10 == ""?Container():Row(
                              children: [
                                SizedBox(
                                  width: 70,
                                  child: Text("10th Result",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                ),
                                SizedBox(width: 15,),
                                SizedBox(width: 100,child: Text("${m1.res10}%",style: TextStyle(color: Colors.black54,),))
                              ],
                            ),
                            SizedBox(height: 3,),

                            m1.res12 == ""?Container():Row(
                              children: [
                                SizedBox(
                                  width: 70,
                                  child: Text("12th Result",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                ),
                                SizedBox(width: 15,),
                                SizedBox(width: 100,child: Text("${m1.res12}%",style: TextStyle(color: Colors.black54,),))
                              ],
                            ),
                            SizedBox(height: 3,),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              height: 150,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("More About me",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,fontSize: 15),),
                  SizedBox(height: 10,),
                  Text("${m1.aboutyou}"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}







// Hobby == m1.hobby?
// Container():
// Row(
//   children: [
//     SizedBox(width: 70,child: Text("Hobby",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
//     SizedBox(width: 15,),
//     SizedBox(width: 100,child: Text("${m1.hobby}",style: TextStyle(color: Colors.black54,),))
//   ],
// ),
//
// SizedBox(height: 3,),
//
// m==m1.intreast?
// Container():
// Row(
//   children: [
//     SizedBox(
//         width:70,
//         child: Text("Intreast",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
//     SizedBox(width: 15,),
//     SizedBox(
//         width: 100,
//         child: Text("${m1.intreast}",style: TextStyle(color: Colors.black54,),))
//   ],
// ),
