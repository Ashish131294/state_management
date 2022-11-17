import 'package:flutter/material.dart';

class demo extends StatelessWidget {


  TextEditingController t=TextEditingController();
  TextEditingController t1=TextEditingController();
  //String str="";
 // int a=0;
  ValueNotifier s=ValueNotifier("");

  @override
  Widget build(BuildContext context) {

    //ValueNotifier<int> a=ValueNotifier(0);

    return Scaffold(appBar: AppBar(),
    body: Center(
      child: Column(children: [
        /*ValueListenableBuilder(valueListenable: a, builder: (context, v, child) {
          return ListTile(title: Text("$v"),);
        },),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(onPressed: () {
            a.value++;
            print(a);
          }, child: Text("+")),
        ),*/
        TextField(controller: t,

          ),
        TextField(controller: t1,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(onPressed: () {
            s.value= int.parse(t.text)+int.parse(t1.text);

          }, child: Text("Submit")),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ValueListenableBuilder(valueListenable: s, builder: (context, value, child) {
            return Text("$value");
          },),
        )
      ],),
    ),
    );
  }
}
