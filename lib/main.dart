
 import 'package:flutter/cupertino.dart';
import 'dart:async';

import 'package:flutter/material.dart';
void main(List<String> args) => runApp(MaterialApp(home: HomePage()));
  var count = 0;

class HomePage extends StatelessWidget{
@override
  Widget build(BuildContext context) {
   
   return Scaffold(
    body: Center(
      child: StreamBuilder(
        stream: counter(),
        builder: (context, snapshot) {
          if(snapshot.data != null){
            return Text(snapshot.data.toString());
          }else{
            return CircularProgressIndicator();
          }
        },
      )
       ),
   );
  }
  Future<String> showName(String name) async{
  await Future.delayed(Duration(seconds: 5));
  return "my name is : " + name;
}
Stream<int> counter() async* {
  while (count <= 100){
    await Future.delayed(Duration(seconds: 1));
    yield count++;
  }
}
 }

