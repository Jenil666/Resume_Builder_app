import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Model/ModelData.dart';


class Resume2 extends StatefulWidget {
  const Resume2({Key? key}) : super(key: key);

  @override
  State<Resume2> createState() => _Resume2State();
}

class _Resume2State extends State<Resume2> {

  double spacing = 20;
  @override
  Widget build(BuildContext context) {
    ModelData m1 = ModalRoute
        .of(context)!
        .settings
        .arguments as ModelData;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              height: 150,
              width: double.infinity,
              color: Color(0xffebccba),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Container(
                height: double.infinity,
                width: 150,
                color: Color(0xff6c999a),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 45, top: 60),
              child: Container(
                  height: 120,
                  width: 120,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: FileImage(File("${m1.image}"))
                  ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, top: 230),
              child: Expanded(
                child: Container(
                  width: 150,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text("Profile",
                              style: TextStyle(fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),),
                          )
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Text("${m1.aboutyou}",
                              style: TextStyle(color: Colors.white),),
                          ],
                        ),
                      ),
                      SizedBox(height: spacing,),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text("Contact Me",
                              style: TextStyle(fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,),),
                          )
                        ],
                      ),
                      Container(
                        child: Column(
                          children: [
                            SizedBox(height: 8,),
                            Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                width: 150,
                                child: Row(
                                  children: [
                                    Icon(Icons.phone, color: Colors.white,
                                      size: 15,),
                                    SizedBox(width: 5,),
                                    Container(width: 110,
                                        child: Text("${m1.phone}",
                                          style: TextStyle(
                                              color: Colors.white),)),
                                  ],
                                )),
                            SizedBox(height: 5,),
                            Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                width: 150,
                                child: Row(
                                  children: [
                                    Icon(Icons.mail, color: Colors.white,
                                      size: 15,),
                                    SizedBox(width: 5,),
                                    Container(width: 110,
                                        child: Text("${m1.email}",
                                          style: TextStyle(
                                              color: Colors.white),)),
                                  ],
                                )),
                            SizedBox(height: 5,),
                            Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                width: 150,
                                child: Row(
                                  children: [
                                    Icon(Icons.home_filled, color: Colors.white,
                                      size: 15,),
                                    SizedBox(width: 5,),
                                    Container(width: 110,
                                        child: Text("${m1.address}",
                                          style: TextStyle(
                                              color: Colors.white),)),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 180, top: 75),
              child: Padding(
                padding: EdgeInsets.only(left:10),
                child: Container(height: 100, width: 200,
                  child: Column(children: [
                    Row(
                      children: [
                        Text("${m1.name}\n${m1.surname}",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Text("${m1.experties}",style: TextStyle(color: Colors.black),),
                      ],
                    ),
                  ],),),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 180,top: 250),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: double.infinity,
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.arrow_forward_ios,color: Color(0xff6c999a),),
                        SizedBox(width: 5,),
                        Text("Education",style: TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Row(
                        children: [
                          Container(
                              width: 150,
                              child: Text("Basically:-      ${m1.qualification}\n10th result:-   ${m1.res10}%\n12th result:-   ${m1.res12}%\n")),
                            ],
                          ),
                    ),
                    SizedBox(height: spacing,),
                    Row(
                      children: [
                        Icon(Icons.arrow_forward_ios,color: Color(0xff6c999a),),
                        SizedBox(width: 5,),
                        Text("Languages",style: TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30.0),
                      child: Row(
                        children: [
                          Text("${m1.language1}\n${m1.language2}\n${m1.language3}")
                        ],
                      ),
                    ),
                    SizedBox(height: spacing,),
                    Row(
                      children: [
                        Icon(Icons.arrow_forward_ios,color: Color(0xff6c999a),),
                        SizedBox(width: 5,),
                        Text("Skills",style: TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30.0),
                      child: Row(
                        children: [
                          Container(
                              width: 150,
                              child: Text("${m1.skill}")),
                        ],
                      ),
                    ),
                    SizedBox(height: spacing,),
                    Row(
                      children: [
                        Icon(Icons.arrow_forward_ios,color: Color(0xff6c999a),),
                        SizedBox(width: 5,),
                        Text("Experience",style: TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30.0),
                      child: Row(
                        children: [
                          Text("${m1.experience} years")
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//(m1.image != "" ? FileImage(File("${m1.image}")) : AssetImage("assets/images/resumes/resume1.jpg")),