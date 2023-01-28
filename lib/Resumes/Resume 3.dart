import 'dart:io';

import 'package:flutter/material.dart';

import '../Model/ModelData.dart';

class Resume3 extends StatefulWidget {
  const Resume3({Key? key}) : super(key: key);

  @override
  State<Resume3> createState() => _Resume3State();
}

class _Resume3State extends State<Resume3> {
  @override
  Widget build(BuildContext context) {

    ModelData m1 = ModalRoute.of(context)!.settings.arguments as ModelData;


    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 60,top: 70),
              child: Container(
                height: 150,
                width: 110,
                child: Image.file(File("${m1.image}"),fit: BoxFit.fill,)
              ),
            ), //photo
            Padding(
              padding: EdgeInsets.only(left: 200,top: 70),
              child: Container(
                height: 150,
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      child: Text("${m1.name}  ${m1.surname}",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    ),
                    Container(
                      width: double.infinity,
                      child: Text("${m1.experties}",style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: double.infinity,
                      child: Text("${m1.aboutyou}"),
                    ),
                  ],
                ),
              ),
            ), //Name
            Padding(
              padding: EdgeInsets.only(top: 250,left: 200),
              child: Container(
                height: double.infinity,
                width: 170,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("My EXPERIENCE",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                    Text("${m1.experience} years"),
                    Text("${m1.compost}"),
                    Text("${m1.comname}"),
                    Text("${m1.comsome}"),
                  ],
                ),
              ),
            ), // experience
            Padding(
              padding: EdgeInsets.only(left: 20,top: 430),
              child: Container(
                height: 150,
                width: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Skill",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    Text("${m1.skill}"),
                  ],
                ),
              ),
            ), //skill
            Padding(
              padding: EdgeInsets.only(left: 20,top: 250),
              child: Container(
                height: 150,
                width: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Education",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    Text("10th percentages:-${m1.res10}\n12th percentages:-${m1.res12}"),
                    Text("Completed:-${m1.experties}"),
                  ],
                ),
              ),
            ), //Education
            Padding(
              padding: EdgeInsets.only(left: 20,top: 610),
              child: Container(
                height: 150,
                width: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Contact",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    Text("${m1.email}"),
                    Text("${m1.phone}"),
                    Text("${m1.address}"),
                  ],
                ),
              ),
            ), // contact
          ],
        ),
      ),
    );
  }
}
