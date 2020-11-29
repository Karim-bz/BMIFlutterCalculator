import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: ButtonTheme(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 30, 0),
                          height: 150,
                          width: 150,
                          child: RaisedButton(
                            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            color: const Color(0xff111328),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Icon(
                                  FontAwesomeIcons.mars,
                                  color: Colors.white,
                                  size: 60,
                                ),
                                Text(
                                  "MALE",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 20,
                                      height: 2),
                                ),
                              ],
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                    ButtonTheme(
                      child: Container(
                        height: 150,
                        width: 150,
                        child: RaisedButton(
                          padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                          color: const Color(0xff111328),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Icon(
                                FontAwesomeIcons.venus,
                                color: Colors.white,
                                size: 60,
                              ),
                              Text(
                                "MALE",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                    height: 2),
                              ),
                            ],
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "$_value",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                height: 1.4,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "cm",
                            style: TextStyle(
                                color: Colors.grey, fontSize: 15, height: 2),
                          ),
                        ],
                      ),
                      Slider(
                        value: _value.toDouble(),
                        min: 1.0,
                        max: 300.0,
                        activeColor: Colors.pinkAccent,
                        inactiveColor: Colors.white,
                        label: '_value',
                        onChanged: (double newValue) {
                          setState(() {
                            _value = newValue.round();
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Row(
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
                        child: Column(
                          children: [
                            Text(
                              "Weight",
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 20, height: 2),
                            ),
                            Text(
                              "Value",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ButtonTheme(
                                  minWidth: 20.0,
                                  child: RaisedButton(
                                    color: Colors.pink,
                                    textColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50.0),
                                    ),
                                    child: Text(
                                      "-",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                                ButtonTheme(
                                  minWidth: 20.0,
                                  child: RaisedButton(
                                    color: Colors.pink,
                                    textColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50.0),
                                    ),
                                    child: Text(
                                      "+",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    onPressed: () {},
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff111328),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 150,
                      width: 150,
                      child: Column(
                        children: [
                          Text(
                            "AGE",
                            style: TextStyle(
                                color: Colors.grey, fontSize: 20, height: 2),
                          ),
                          Text(
                            "Value",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ButtonTheme(
                                minWidth: 20.0,
                                child: RaisedButton(
                                  color: Colors.pink,
                                  textColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                  child: Text(
                                    "-",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              ButtonTheme(
                                minWidth: 20.0,
                                child: RaisedButton(
                                  color: Colors.pink,
                                  textColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                  child: Text(
                                    "+",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  onPressed: () {},
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                FlatButton(
                  color: Colors.pink,
                  textColor: Colors.white,
                  minWidth: double.infinity,
                  splashColor: Colors.pinkAccent,
                  padding: EdgeInsets.all(15),
                  onPressed: () {
                    /*...*/
                  },
                  child: Text(
                    "CALCULATE",
                    style:
                        TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
