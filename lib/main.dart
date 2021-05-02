import 'package:flutter/material.dart';
import 'dart:math';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Scaffold(
      appBar: AppBar(
        centerTitle:true ,
        title: Text('Numbers',style: TextStyle(fontSize: 30)),
        toolbarHeight: 60,
        backgroundColor: Colors.yellow.shade700,
      ),
      body: numbers(),

      backgroundColor: Colors.grey.shade900,
    ),

  ));
}
class numbers extends StatefulWidget {
  @override
  _numbersState createState() => _numbersState();
}
  class _numbersState extends State<numbers>{
  int number=1;
@override
    Widget build(BuildContext context){
  return Center(
    child: Expanded(
      child: FlatButton(
        onPressed: (){
          setState(() {
            number= Random().nextInt(6)+1;
            print('number=$number');
          });
        },
        child: Image.asset('image/number$number.png'),
      ),
    )
  );
}
}