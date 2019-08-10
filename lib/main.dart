import 'package:flutter/material.dart';
import 'package:remindme/utils/colours.dart';
import 'package:remindme/utils/buttons.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
       // primarySwatch: Colors.blue,
       accentColor: colours.mainColour,
       primaryColor: colours.mainColour
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
 

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

  @override
  Widget build(BuildContext context) {
     void showModalOPtions () {
    showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text("Create a reminder"),
          content: Container(
            height: MediaQuery.of(context).size.height/5.0 ,
            child:  Column(
            children: <Widget>[
              PlainButton(
                displayText: "Time Reminder", 
                width: 150.0, 
                tap: (){
                  print("Hello");
              },),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
              ),
               PlainButton(
                displayText: "Smart Reminder", 
                width: 150.0, 
                tap: (){
                  print("Hello");
              },),
              //  Padding(
              //   padding: EdgeInsets.only(top: 10.0),
              // ),
              //  PlainButton(
              //   displayText: "Smart Reminder", 
              //   width: 150.0, 
              //   tap: (){
              //     print("Hello");
              // },)




            ],
          ),
          )
         
          
        );
      }
      
    );
  }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Remind Me"),
        // backgroundColor: colours.mainColour,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have no active reminders',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: showModalOPtions,
        tooltip: 'Create a reminder',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
