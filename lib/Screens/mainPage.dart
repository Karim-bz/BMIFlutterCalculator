import 'dart:ffi';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MainPageView(),
    );
  }
}

class MainPageView extends StatefulWidget {
  @override
  _MainPageViewState createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  int _value = 6;

  // var mStyle = GoogleFonts.lobster(
  //   color: Colors.white,
  //   fontSize: 35,
  // );

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Scaffold(
          backgroundColor: const Color(0xff090E21),
          appBar: AppBar(
            title: Text("BMI FLUTTER CALCULATOR"),
            backgroundColor: const Color(0xff090E21),
          ),
          body: Container(
            margin: EdgeInsets.all(15.0),
            child: Column(
              children: [
                twoRows(),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff111328),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 130,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Text(
                        "Height",
                        style: TextStyle(
                            color: Colors.grey, fontSize: 20, height: 2),
                      ),
                      Text(
                        "$_value Cm",
                        style: TextStyle(
                            color: Colors.white, fontSize: 30, height: 1.4),
                      ),
                      Slider(
                        value: _value.toDouble(),
                        min: 1.0,
                        max: 300.0,
                        // divisions: 10,
                        activeColor: Colors.pinkAccent,
                        inactiveColor: Colors.white,
                        label: '_value',
                        onChanged: (double newValue) {
                          setState(() {
                            _value = newValue.round();
                          });
                        },
                        semanticFormatterCallback: (double newValue) {
                          return '${newValue.round()} dollars';
                        },
                      ),
                    ],
                  ),
                ),
                twoRows(),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  height: 70,
                  width: double.infinity,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row twoRows() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 0, 30, 0),
            decoration: BoxDecoration(
              color: const Color(0xff111328),
              borderRadius: BorderRadius.circular(10),
            ),
            height: 150,
            width: 150,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xff111328),
            borderRadius: BorderRadius.circular(10),
          ),
          height: 150,
          width: 150,
        ),
      ],
    );
  }
}
