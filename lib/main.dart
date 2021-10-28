import 'package:flutter/material.dart';
import 'showchoices.dart';
void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner:false,home: Hwk3()));
}
class Hwk3 extends StatefulWidget {
  @override
//_Hwk3State createState() => _Hwk3State(); OR
  _Hwk3State createState() {
    return _Hwk3State();
  }
}
class _Hwk3State extends State<Hwk3> {
  String pizzaType;
  String pizzaType1 = 'Cheese Pizza';
  String pizzaType2 = 'Pepperoni Pizza';
  String pizzaType3 = 'Supreme Pizza';
  String pizzaSize;
  String pizzaSize1 = 'Large(14")';
  String pizzaSize2 = 'Medium(12")';
  String pizzaSize3 = 'Small(10")';
  //Using SafeArea: SafeArea is basically a padding widget, which adds any necessary padding to your app,
  //based on the device it is running on. If your app’s widgets are overlaying any of the system’s features like
  //notches, status bar, camera holes, or any other such features, then SafeArea would add padding around the
  //app, as required.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: AppBar(backgroundColor: Colors.green,)),
          body: Column(children: [
            Text('Pizza Order',style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Container(alignment:Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Text('1. Pizza'),
                )),
            Row(children: [
              Radio(
                value:pizzaType1,
                groupValue: pizzaType,
                onChanged: (T){
                  setState(() {
                    pizzaType = T;
                  });
                },
              ),
              Text(pizzaType1),
            ],),
            Row(children: [
              Radio(
                value:pizzaType2,
                groupValue: pizzaType,
                onChanged: (T){
                  setState(() {
                    pizzaType = T;
                  });
                },
              ),
              Text(pizzaType2),
            ],),
            Row(children: [
              Radio(
                value:pizzaType3,
                groupValue: pizzaType,
                onChanged: (T){
                  setState(() {
                    pizzaType = T;
                  });
                },
              ),
              Text(pizzaType3),
            ],),
            SizedBox(height: 10,),
            Container(alignment:Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Text('2. Pizza Size'),
                )),
            Row(children: [
              Radio(
                value:pizzaSize1,
                groupValue: pizzaSize,
                onChanged: (T){
                  setState(() {
                    pizzaSize = T;
                  });
                },
              ),
              Text(pizzaSize1),
            ],),
            Row(children: [
              Radio(
                value:pizzaSize2,
                groupValue: pizzaSize,
                onChanged: (T){
                  setState(() {
                    pizzaSize = T;
                  });
                },
              ),
              Text(pizzaSize2),
            ],),
            Row(children: [
              Radio(
                value:pizzaSize3,
                groupValue: pizzaSize,
                onChanged: (T){
                  setState(() {
                    pizzaSize = T;
                  });
                },
              ),
              Text(pizzaSize3),
            ],),
            SizedBox(height: 10,),
            ElevatedButton(
                child: Text('Show Order'),
                onPressed: (){
                  //ensuring a pizzaType and a pizzaSize has been selected
                  if((pizzaType != null) & (pizzaSize != null))
                  {
                    Navigator.of(context).push(MaterialPageRoute(builder: (builder){
                      return ShowChoices(pizzatypeKey: pizzaType, pizzasizeKey: pizzaSize);
                    }));
                  }
                  else
                  {
                    //alert message as Snackbar
                    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Please select a pizza type and a pizza size')));
                  }
                })
          ],)
      ),
    );
  }
}
