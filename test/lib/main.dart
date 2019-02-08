import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculator Layout",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Calculator(),
    );
  }
}

class CalculatorLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mainState = MainState.of(context);
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: ListView(
        children: <Widget>[
          Divider(),
          ClipRRect(
            borderRadius: BorderRadius.circular(18.0),
            clipBehavior: Clip.hardEdge,
            child: Container(
                height: 280.0,
                width: 500.0,
                color: Colors.orangeAccent,
                child:  Text(
                mainState.inputValue ?? '0',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 48.0,
                  ),
                )
            ),
          ),
          Divider(height:20.0),
          ClipRRect(
            borderRadius: BorderRadius.circular(18.0),
            clipBehavior: Clip.hardEdge,
            child: Container(
              height: 300.0,
              child: ListView(
                children: <Widget>[
                  makeBtns1('789+'),
                  makeBtns2('654-'),
                  makeBtns3('123x'),
                  makeBtns4('C0=/'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
  Widget makeBtns1(String row) {
    List<String> token = row.split("");
    return Container(
      height: 80.0,
      color: Colors.cyan,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: token
            .map((e) => CalcButton(
          keyvalue: e == '_' ? "+/-" : e == '<' ? '<=' : e,
        ))
            .toList(),
      ),
    );
  }
  Widget makeBtns2(String row) {
    List<String> token = row.split("");
    return Container(
      height: 80.0,
      color: Colors.yellow,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: token
            .map((e) => CalcButton(
          keyvalue: e == '_' ? "+/-" : e == '<' ? '<=' : e,
        ))
            .toList(),
      ),
    );
  }
  Widget makeBtns3(String row) {
    List<String> token = row.split("");
    return Container(
      height: 80.0,
      color: Colors.red,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: token
            .map((e) => CalcButton(
          keyvalue: e == '_' ? "+/-" : e == '<' ? '<=' : e,
        ))
            .toList(),
      ),
    );
  }
  Widget makeBtns4(String row) {
    List<String> token = row.split("");
    return Container(
      height: 80.0,
      color: Colors.blueGrey,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: token
            .map((e) => CalcButton(
          keyvalue: e == '_' ? "+/-" : e == '<' ? '<=' : e,
        ))
            .toList(),
      ),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  CalcState createState() => CalcState();
}

class CalcState extends State<Calculator> {
  String inputString = "";
  double prevValue;
  String value = "";
  String op = 'z';

  bool isNumber(String str) {
    if (str == null) {
      return false;
    }
    return double.parse(str, (e) => null) != null;
  }

  void onPressed(keyvalue) {
    switch (keyvalue) {
      case "C":
        op = null;
        prevValue = 0.0;
        value = "";
        setState(() => inputString = "");
        break;
      case ".":
      case "%":
      case "<=":
      case "+/-":
        break;
      case "x":
      case "+":
      case "-":
      case "/":
        op = keyvalue;
        value = '';
        prevValue = double.parse(inputString);
        setState(() {
          inputString = inputString + keyvalue;
        });
        break;
      case "=":
        if (op != null) {
          setState(() {
            switch (op) {
              case "x":
                inputString =
                    (prevValue * double.parse(value)).toStringAsFixed(0);
                break;
              case "+":
                inputString =
                    (prevValue + double.parse(value)).toStringAsFixed(0);
                break;
              case "-":
                inputString =
                    (prevValue - double.parse(value)).toStringAsFixed(0);
                break;
              case "/":
                inputString =
                    (prevValue / double.parse(value)).toStringAsFixed(2);
                break;
            }
          });
          op = null;
          prevValue = double.parse(inputString);
          value = '';
          break;
        }
        break;
      default:
        if (isNumber(keyvalue)) {
          if (op != null) {
            setState(() => inputString = inputString + keyvalue);
            value = value + keyvalue;
          } else {
            setState(() => inputString = "" + keyvalue);
            op = 'z';
          }
        } else {
          onPressed(keyvalue);
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MainState(
      inputValue: inputString,
      prevValue: prevValue,
      value: value,
      op: op,
      onPressed: onPressed,
      child: CalculatorLayout(),
    );
  }
}

class MainState extends InheritedWidget {
  MainState({
    Key key,
    this.inputValue,
    this.prevValue,
    this.value,
    this.op,
    this.onPressed,
    Widget child,
  }) : super(key: key, child: child);

  final String inputValue;
  final double prevValue;
  final String value;
  final String op;
  final Function onPressed;

  static MainState of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(MainState);
  }

  @override
  bool updateShouldNotify(MainState oldWidget) {
    return inputValue != oldWidget.inputValue;
  }
}

class CalcButton extends StatelessWidget {
  CalcButton({this.keyvalue});

  final String keyvalue;

  @override
  Widget build(BuildContext context) {
    final mainState = MainState.of(context);
    return Expanded(
      flex: 1,
      child: FloatingActionButton(
        backgroundColor: Colors.white,
        child: Text(
          keyvalue,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 36.0,
            color: Colors.black54,
          ),
        ),
        onPressed: () {
          mainState.onPressed(keyvalue);
        },
      ),
    );
  }
}
