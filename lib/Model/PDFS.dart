import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import 'ModelData.dart';

void resume1(ModelData m1)
async {
  final pdf = pw.Document();
  var image = pw.MemoryImage(
    File('${m1.image}').readAsBytesSync(),
  );
  pdf.addPage(pw.Page(
    margin: pw.EdgeInsets.all(10),
    orientation: pw.PageOrientation.portrait,
    pageFormat: PdfPageFormat.a4,
    build: (context) {
      return pw.Column(
        children: [
          pw.SizedBox(height: 20,),
          pw.Container(
            margin: pw.EdgeInsets.symmetric(horizontal: 10),
            height: 80,
            width: double.infinity,
            decoration: pw.BoxDecoration(
                border: pw.Border(bottom: pw.BorderSide(color: PdfColors.black))
            ),
            alignment: pw.Alignment.topCenter,
            child: pw.Text("Resume",style: pw.TextStyle(fontSize: 30,color: PdfColors.black),),
          ),
          pw.Expanded (
            child: pw.Container(
              child: pw.Row(
                children: [
                  pw.Expanded(
                    flex: 2,
                    child: pw.Container(
                      margin: pw.EdgeInsets.only(left: 10),
                      child: pw.Column(
                        mainAxisAlignment: pw.MainAxisAlignment.center,
                        children: [
                          pw.Container(
                            height: 120,
                            width: 120,
                            child: pw.Image(image),
                            decoration: pw.BoxDecoration(
                                color: PdfColors.white,
                                border: pw.Border.all(color: PdfColors.black,width: 2)
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  pw.Expanded(
                    flex: 3,
                    child: pw.Container(
                      margin: pw.EdgeInsets.only(right: 10),
                      child: pw.Column(
                        mainAxisAlignment: pw.MainAxisAlignment.center,
                        children: [
                          pw.Row(
                            children: [
                              pw.SizedBox(
                                  width: 70,
                                  child: pw.Text("Name",style: pw.TextStyle(color: PdfColors.black,fontWeight: pw.FontWeight.bold,),)),
                              pw.SizedBox(width: 15,),
                              pw.SizedBox(
                                  width: 100,
                                  child: pw.Text("${m1.name} ${m1.surname}",style: pw.TextStyle(color: PdfColors.black,),))
                            ],
                          ),
                          pw.SizedBox(height: 3,),

                          pw.Row(
                            children: [
                              pw.SizedBox(
                                  width: 70,
                                  child: pw.Text("DOB",style: pw.TextStyle(color: PdfColors.black,fontWeight: pw.FontWeight.bold),)),
                              pw.SizedBox(width: 15,),
                              pw.SizedBox(
                                  width: 100,
                                  child: pw.Text("${m1.bdate}/${m1.bmonth}/${m1.byear}",style: pw.TextStyle(color: PdfColors.black,),))
                            ],
                          ),
                          pw.SizedBox(height: 3,),

                          pw.Row(
                            children: [
                              pw.SizedBox(
                                  width: 70,
                                  child: pw.Text("Address",style: pw.TextStyle(color: PdfColors.black,fontWeight: pw.FontWeight.bold),)),
                              pw.SizedBox(width: 15,),
                              pw.SizedBox(
                                  width: 100,
                                  child: pw.Text("${m1.address},${m1.city}",style: pw.TextStyle(color: PdfColors.black,),))
                            ],
                          ),
                          pw.SizedBox(height: 3,),

                          pw.Row(
                            children: [
                              pw.SizedBox(
                                  width: 70,
                                  child: pw.Text("Qualification",style: pw.TextStyle(color: PdfColors.black,fontWeight: pw.FontWeight.bold,),)),
                              pw.SizedBox(width: 15,),
                              pw.SizedBox(
                                  width: 100,
                                  child: pw.Text("${m1.qualification}",style: pw.TextStyle(color: PdfColors.black,),))
                            ],
                          ),
                          pw.SizedBox(height: 3,),

                          pw.Row(
                            children: [
                              pw.SizedBox(
                                  width: 70,
                                  child: pw.Text("Nationality",style: pw.TextStyle(color: PdfColors.black,fontWeight: pw.FontWeight.bold),)),
                              pw.SizedBox(width: 15,),
                              pw.SizedBox(
                                  width: 100,
                                  child: pw.Text("${m1.nationality}",style: pw.TextStyle(color: PdfColors.black,),))
                            ],
                          ),
                          pw.SizedBox(height: 3,),

                          pw.Row(
                            children: [
                              pw.SizedBox(
                                  width: 70,
                                  child: pw.Text("Gender",style: pw.TextStyle(color: PdfColors.black,fontWeight: pw.FontWeight.bold),)),
                              pw.SizedBox(width: 15,),
                              pw.SizedBox(
                                  width: 100,
                                  child: pw.Text("${m1.gender} ",style: pw.TextStyle(color: PdfColors.black,),))
                            ],
                          ),
                          pw.SizedBox(height: 3,),

                          pw.Row(
                            children: [
                              pw.SizedBox(
                                  width:70,
                                  child: pw.Text("Address",style: pw.TextStyle(color: PdfColors.black,fontWeight: pw.FontWeight.bold),)),
                              pw.SizedBox(width: 15,),
                              pw.SizedBox(
                                  width: 100,
                                  child: pw.Text("${m1.address}",style: pw.TextStyle(color: PdfColors.black,),))
                            ],
                          ),
                          pw.SizedBox(height: 3,),

                          pw.Row(
                            children: [
                              pw.SizedBox(
                                  width:70,
                                  child: pw.Text("Phone NO.",style: pw.TextStyle(color: PdfColors.black,fontWeight: pw.FontWeight.bold),)),
                              pw.SizedBox(width: 15,),
                              pw.SizedBox(
                                  width: 100,
                                  child: pw.Text("${m1.phone}",style: pw.TextStyle(color: PdfColors.black,),))
                            ],
                          ),
                          pw.SizedBox(height: 3,),

                          pw.Row(
                            children: [
                              pw.SizedBox(
                                  width:70,
                                  child: pw.Text("E-mail",style: pw.TextStyle(color: PdfColors.black,fontWeight: pw.FontWeight.bold),)),
                              pw.SizedBox(width: 15,),
                              pw.SizedBox(
                                  width: 100,
                                  child: pw.Text("${m1.email}",style: pw.TextStyle(color: PdfColors.black,),))
                            ],
                          ),
                          pw.SizedBox(height: 3,),

                          pw.Row(
                            children: [
                              pw.SizedBox(
                                  width:70,
                                  child: pw.Text("Languages Known",style: pw.TextStyle(color: PdfColors.black,fontWeight: pw.FontWeight.bold),)),
                              pw.SizedBox(width: 15,),
                              pw.SizedBox(
                                  width: 100,
                                  child: pw.Text("${m1.language1}\n${m1.language2}\n${m1.language3}",style: pw.TextStyle(color: PdfColors.black,),))
                            ],
                          ),
                          pw.SizedBox(height: 3,),

                          m1.hobby == ""?pw.Container():pw.Row(
                            children: [
                              pw.SizedBox(width: 70,child: pw.Text("Hobby",style: pw.TextStyle(color: PdfColors.black,fontWeight: pw.FontWeight.bold),)),
                              pw.SizedBox(width: 15,),
                              pw.SizedBox(width: 100,child: pw.Text("${m1.hobby}  ${m1.city}",style: pw.TextStyle(color: PdfColors.black,),))
                            ],
                          ),
                          pw.SizedBox(height: 3,),

                          pw.SizedBox(height: 3,),

                          m1.intreast == ""?pw.Container():pw.Row(
                            children: [
                              pw.SizedBox(
                                  width:70,
                                  child: pw.Text("Intreast",style: pw.TextStyle(color: PdfColors.black,fontWeight: pw.FontWeight.bold),)),
                              pw.SizedBox(width: 15,),
                              pw.SizedBox(
                                  width: 100,
                                  child: pw.Text("${m1.intreast}",style: pw.TextStyle(color: PdfColors.black,),))
                            ],
                          ),
                          pw.SizedBox(height: 3,),

                          m1.res10 == ""?pw.Container():pw.Row(
                            children: [
                              pw.SizedBox(
                                width: 70,
                                child: pw.Text("10th Result",style: pw.TextStyle(color: PdfColors.black,fontWeight: pw.FontWeight.bold),),
                              ),
                              pw.SizedBox(width: 15,),
                              pw.SizedBox(width: 100,child: pw.Text("${m1.res10}%",style: pw.TextStyle(color: PdfColors.black,),))
                            ],
                          ),
                          pw.SizedBox(height: 3,),

                          m1.res12 == ""?pw.Container():pw.Row(
                            children: [
                              pw.SizedBox(
                                width: 70,
                                child: pw.Text("12th Result",style: pw.TextStyle(color: PdfColors.black,fontWeight: pw.FontWeight.bold),),
                              ),
                              pw.SizedBox(width: 15,),
                              pw.SizedBox(width: 100,child: pw.Text("${m1.res12}%",style: pw.TextStyle(color: PdfColors.black,),))
                            ],
                          ),
                          pw.SizedBox(height: 3,),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          pw.Container(
            margin: pw.EdgeInsets.symmetric(horizontal: 10),
            height: 150,
            width: double.infinity,
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Text("More About me",style: pw.TextStyle(color: PdfColors.black,fontWeight: pw.FontWeight.bold,fontStyle: pw.FontStyle.italic,fontSize: 15),),
                pw.SizedBox(height: 10,),
                pw.Text("${m1.aboutyou}"),
              ],
            ),
          )
        ],
      );
    },
  )
  );
  Directory? directory = await getExternalStorageDirectory();
  var file = File("${directory!.path}/myresume.pdf");
  await file.writeAsBytes(await pdf.save());
  print("$file");
}