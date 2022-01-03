import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double valor = 0;
  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Opacity and Sliders'),
        ),

        body:Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Slider(
                    min: 0,
                    max: 1,
                    value: valor,
                    onChanged: (val){
                      setState(() {
                        valor = val;
                      });
                    }
                ),
                AnimatedOpacity(
                  opacity: valor, // double between 0 y 1
                  duration: Duration(milliseconds: 1000),
                  child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.redAccent,
                  ),
                ),
                AnimatedOpacity(
                  opacity: (valor >= 0.25) ? (valor == 1) ? 1 : valor - 0.20 : 0, // double between 0 y 1
                  // opacity: valor * valor, // double between 0 y 1
                  duration: Duration(milliseconds: 1000),
                  child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.amber,
                  ),
                ),
                AnimatedOpacity(
                  opacity: (valor >= 0.50) ? (valor == 1) ? 1 : valor - 0.45 : 0, // double between 0 y 1
                  //opacity: valor / 2, // double between 0 y 1
                  duration: Duration(milliseconds: 1000),
                  child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.lightGreen,
                  ),
                ),
                AnimatedOpacity(
                  opacity: (valor >= 0.75) ? (valor == 1) ? 1 : valor - 0.70 : 0, // double between 0 y 1
                  //opacity: (valor + 0.05) / 2, // double between 0 y 1
                  duration: Duration(milliseconds: 1000),
                  child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.cyan,
                  ),
                ),
              ],
            ),
          )
        ) ,
      ),
    );
  }
}