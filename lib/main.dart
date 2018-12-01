import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CalculaterApp(),
    );
  }
}

class CalculaterApp extends StatefulWidget {
  @override
  _CalculaterAppState createState() => _CalculaterAppState();
}

class _CalculaterAppState extends State<CalculaterApp> {

  String data = "0";
  void ac(){
    setState(() {
          data ="0";
     });
  }

  void seven(){
    setState(() {
      var num = int.parse(data);
        num = 10*num+7;
      data = num.toString();  
    });
  }

  void eight(){
    setState(() {
      var num = int.parse(data);
        num = 10*num+8;
      data = num.toString();  
    });
  }

  void nine(){
    setState(() {
      var num = int.parse(data);
        num = 10*num+9;
      data = num.toString();   
    });
  }

  void four(){
    setState(() {
      var num = int.parse(data);
        num = 10*num+4;
      data = num.toString();  
    });
  }

  void five(){
    setState(() {
      var num = int.parse(data);
        num = 10*num+5;
      data = num.toString();  
    });
  }

  void six(){
    setState(() {
      var num = int.parse(data);
        num = 10*num+6;
      data = num.toString();   
    });
  }

  void one(){
    setState(() {
      var num = int.parse(data);
        num = 10*num+1;
      data = num.toString();  
    });
  }

  void two(){
    setState(() {
      var num = int.parse(data);
        num = 10*num+2;
      data = num.toString();  
    });
  }

  void three(){
    setState(() {
      var num = int.parse(data);
        num = 10*num+3;
      data = num.toString();   
    });
  }
  
  void zero(){
    setState(() {
      var num = int.parse(data);
        num = 10*num;
      data = num.toString();   
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: ListView(
        children: <Widget>[
          Divider(height: 20.0,),
          ClipRRect(
          borderRadius: BorderRadius.circular(18.0),
          clipBehavior: Clip.hardEdge,
          child: Container(
                  height: 280.0,
                  width: 500.0,
                  color: Colors.orangeAccent,
                  child: Text(data,
                  textAlign: TextAlign.end,
                  //textDirection: TextDirection.ltr,
                  style: TextStyle(fontSize: 50.0),
             )
           ),
         ),
         Divider(height: 20.0,),
         ClipRRect(
          borderRadius: BorderRadius.circular(18.0),
          clipBehavior: Clip.hardEdge,
          child: Container(
            height:300.0,
            child: ListView(
              children: <Widget>[
                Container(
                  height: 80.0,
                  width: 200.0,
                  color: Colors.cyan,
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 20.0,
                        color: Colors.cyan, 
                      ),
                      FloatingActionButton(
                        onPressed: seven,
                            backgroundColor: Colors.white,
                            child: Text("7",style: TextStyle(
                            fontSize: 40.0,
                            color: Colors.black,
                        ),),
                      ),
                      Container(
                        width: 20.0,
                        color: Colors.cyan, 
                      ),
                      FloatingActionButton(
                        onPressed: eight,
                            backgroundColor: Colors.white,
                            child: Text("8",style: TextStyle(
                            fontSize: 40.0,
                            color: Colors.black,
                        ),),
                      ),
                       Container(
                        width: 20.0,
                        color: Colors.cyan, 
                      ),
                      FloatingActionButton(
                        onPressed: nine,
                            backgroundColor: Colors.white,
                            child: Text("9",style: TextStyle(
                            fontSize: 40.0,
                            color: Colors.black,
                        ),),
                      ),
                      Container(
                        width: 60.0,
                        color: Colors.cyan, 
                      ),
                      FloatingActionButton(
                            backgroundColor: Colors.white,
                            child: Text("+",style: TextStyle(
                            fontSize: 40.0,
                            color: Colors.black,
                        ),),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 80.0,
                  width: 200.0,
                  color: Colors.yellow,
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 20.0,
                        color: Colors.yellow, 
                      ),
                      FloatingActionButton(
                        onPressed: six,
                            backgroundColor: Colors.white,
                            child: Text("6",style: TextStyle(
                            fontSize: 40.0,
                            color: Colors.black,
                        ),),
                      ),
                      Container(
                        width: 20.0,
                        color: Colors.yellow, 
                      ),
                      FloatingActionButton(
                        onPressed: five,
                            backgroundColor: Colors.white,
                            child: Text("5",style: TextStyle(
                            fontSize: 40.0,
                            color: Colors.black,
                        ),),
                      ),
                       Container(
                        width: 20.0,
                        color: Colors.yellow, 
                      ),
                      FloatingActionButton(
                        onPressed: four,
                            backgroundColor: Colors.white,
                            child: Text("4",style: TextStyle(
                            fontSize: 40.0,
                            color: Colors.black,
                        ),),
                      ),
                      Container(
                        width: 60.0,
                        color: Colors.yellow, 
                      ),
                      FloatingActionButton(
                            backgroundColor: Colors.white,
                            child: Text("-",style: TextStyle(
                            fontSize: 40.0,
                            color: Colors.black,
                        ),),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 80.0,
                  width: 200.0,
                  color: Colors.red,
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 20.0,
                        color: Colors.red, 
                      ),
                      FloatingActionButton(
                        onPressed: one,
                            backgroundColor: Colors.white,
                            child: Text("1",style: TextStyle(
                            fontSize: 40.0,
                            color: Colors.black,
                        ),),
                      ),
                      Container(
                        width: 20.0,
                        color: Colors.red, 
                      ),
                      FloatingActionButton(
                        onPressed: two,
                            backgroundColor: Colors.white,
                            child: Text("2",style: TextStyle(
                            fontSize: 40.0,
                            color: Colors.black,
                        ),),
                      ),
                       Container(
                        width: 20.0,
                        color: Colors.red, 
                      ),
                      FloatingActionButton(
                        onPressed: three,
                            backgroundColor: Colors.white,
                            child: Text("3",style: TextStyle(
                            fontSize: 40.0,
                            color: Colors.black,
                        ),),
                      ),
                      Container(
                        width: 60.0,
                        color: Colors.red, 
                      ),
                      FloatingActionButton(
                            backgroundColor: Colors.white,
                            child: Text("X",style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.black,
                        ),),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 80.0,
                  width: 200.0,
                  color: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 20.0,
                        color: Colors.grey, 
                      ),
                      FloatingActionButton(
                        onPressed: ac,
                            backgroundColor: Colors.white,
                            child: Text("AC",style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.black,
                        ),),
                      ),
                      Container(
                        width: 20.0,
                        color: Colors.grey, 
                      ),
                      FloatingActionButton(
                        onPressed: zero,
                            backgroundColor: Colors.white,
                            child: Text("0",style: TextStyle(
                            fontSize: 40.0,
                            color: Colors.black,
                        ),),
                      ),
                       Container(
                        width: 20.0,
                        color: Colors.grey, 
                      ),
                      FloatingActionButton(
                            backgroundColor: Colors.white,
                            child: Text("=",style: TextStyle(
                            fontSize: 40.0,
                            color: Colors.black,
                        ),),
                      ),
                      Container(
                        width: 60.0,
                        color: Colors.grey, 
                      ),
                      FloatingActionButton(
                            backgroundColor: Colors.white,
                            child: Text("/",style: TextStyle(
                            fontSize: 40.0,
                            color: Colors.black,
                        ),),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
         )
        ],
      ),
    );
  }
}
