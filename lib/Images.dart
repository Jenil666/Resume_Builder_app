import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Model/ModelData.dart';

class Images extends StatefulWidget {
  const Images({Key? key}) : super(key: key);

  @override
  State<Images> createState() => _ImagesState();
}

class _ImagesState extends State<Images> {
  @override
  Widget build(BuildContext context) {

    ModelData m1 = ModalRoute.of(context)!.settings.arguments as ModelData;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: CupertinoColors.black,
          title: Text("Select one of the resume"),
          centerTitle: false,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, 'Resume1',arguments: m1);
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  height: 600,
                  width: double.infinity,
                  child: Image.asset("assets/images/resumes/resume1.jpg",fit: BoxFit.fill,),
                ),
              ),
              SizedBox(height: 20,),
              Divider(
                color: Colors.black,
                thickness: 3,
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, 'Resume2',arguments: m1);
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  height: 600,
                  width: double.infinity,
                  child: Image.asset("assets/images/resumes/resume2.jpg",fit: BoxFit.fill,),
                ),
              ),
              SizedBox(height: 20,),
              Divider(
                color: Colors.black,
                thickness: 3,
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, 'Resume3',arguments: m1);
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  height: 600,
                  width: double.infinity,
                  child: Image.asset("assets/images/resumes/resume3.jpg",fit: BoxFit.fill,),
                ),
              ),
              SizedBox(height: 20,),
              Divider(
                color: Colors.black,
                thickness: 3,
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, 'Resume4',arguments: m1);
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  height: 600,
                  width: double.infinity,
                  child: Image.asset("assets/images/resumes/resume4.jpg",fit: BoxFit.fill,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
