import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _controllervalue1 = TextEditingController();
  TextEditingController _controllervalue2 = TextEditingController();



  double result=0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                ),
                Text(
                  'Basic Calculator',
                  style:
                  TextStyle(fontSize: 30, decoration: TextDecoration.underline),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  '$result',
                  style: TextStyle(
                      color: Colors.red, fontWeight: FontWeight.bold, fontSize: 30),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 200,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "First numbers"),
                    controller: _controllervalue1,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 200,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "second numbers"),
                    controller: _controllervalue2,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            double value1 = double.parse(_controllervalue1.text);
                            double value2 = double.parse(_controllervalue2.text);
                            result = value1 + value2;
                          });
                        },
                        child: Text(
                          '+',
                          style: TextStyle(fontSize: 30),
                        )),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            double value1 = double.parse(_controllervalue1.text);
                            double value2 = double.parse(_controllervalue2.text);
                            result = value1 - value2;
                          });
                        },
                        child: Text(
                          '-',
                          style: TextStyle(fontSize: 30),
                        )),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            double value1 = double.parse(_controllervalue1.text);
                            double value2 = double.parse(_controllervalue2.text);
                            result = value1 * value2;
                          });
                        },
                        child: Text(
                          '*',
                          style: TextStyle(fontSize: 26),
                        )),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            double value1 = double.parse(_controllervalue1.text);
                            double value2 = double.parse(_controllervalue2.text);
                            result = value1 / value2;
                          });
                        },
                        child: Text(
                          '/',
                          style: TextStyle(fontSize: 30),
                        )),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
