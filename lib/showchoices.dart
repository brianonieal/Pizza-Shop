import 'package:flutter/material.dart';
void main(){ runApp(MaterialApp(home:ShowChoices())); }
class ShowChoices extends StatefulWidget {
//define passing variables
  String pizzatypeKey, pizzasizeKey;
//constructor
  ShowChoices({this.pizzatypeKey, this.pizzasizeKey});

  @override
  _ShowChoicesState createState() => _ShowChoicesState();
}

class _ShowChoicesState extends State<ShowChoices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: PreferredSize(
      preferredSize: Size.fromHeight(30.0),
      child:AppBar(backgroundColor: Colors.green,),),
      body:Center(child: Container(child: Text('Pizza: ${widget.pizzatypeKey}\n\nSize: ${widget.pizzasizeKey}',
        style: TextStyle(fontSize: 25,decoration: TextDecoration.none, color: Colors.black,
        ) ,)),),
    );
  }
}
