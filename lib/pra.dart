import 'package:flutter/material.dart';

class Pra extends StatefulWidget {
  const Pra({Key? key}) : super(key: key);

  @override
  State<Pra> createState() => _PraState();
}

class _PraState extends State<Pra> {


  int? selected;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
          key: Key('${selected.toString()}'), //attention
          itemCount: 10,
          itemBuilder: (context, i) {
            return ExpansionTile(
               //attention
                initiallyExpanded: i == selected,
                //attention
                title: Text((i+1).toString()),
                children: [Text("1")],

                onExpansionChanged: ((value) {
                  print(value);
                  if (value)
                    setState(() {
                      selected = i;
                    });
                  else
                    setState(() {
                      selected = -1;
                    });
                }));
          },
        ),
      ),
    );
  }
}


