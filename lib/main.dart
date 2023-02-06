
import 'package:flutter/material.dart';
import 'package:resume_builder_app/pra.dart';

import 'Images.dart';
import 'Resumes/Resume 1.dart';
import 'Resumes/Resume 2.dart';
import 'Resumes/Resume 3.dart';
import 'Resumes/Resume 4.dart';
import 'Screen2.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      //initialRoute: 'pre',
      routes: {
        '/':(context)=>Screen2(),
        'Selection':(context)=>Images(),
        'Resume1':(context)=>Resume1(),
        'Resume2':(context)=>Resume2(),
        'Resume3':(context)=>Resume3(),
        'Resume4':(context)=>Resume4(),
        'pre':(context)=>Pra(),
      },
    ),
  );
}