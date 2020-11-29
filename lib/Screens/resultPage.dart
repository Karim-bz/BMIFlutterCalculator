import 'package:bmifluttercalculator/Screens/mainPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ResultPageView(),
    );
  }
}

class ResultPageView extends StatefulWidget {
  @override
  _ResultPageViewState createState() => _ResultPageViewState();
}

class _ResultPageViewState extends State<ResultPageView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: const Color(0xff090E21),
        appBar: AppBar(
          title: Text("BMT CALCULATOR"),
        ),
        body: Container(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Column(
                children: [
                  Text(
                    "YOUR RESULT",
                    style: TextStyle(
                      fontSize: 35.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xff111328),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 350,
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "UNDERWEIGHT",
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 20, height: 2),
                            ),
                            Text(
                              "VALUE",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                height: 2,
                              ),
                            ),
                            Text(
                              "INTERPERTATION",
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 20, height: 2),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  FlatButton(
                    color: Colors.pink,
                    textColor: Colors.white,
                    minWidth: double.infinity,
                    splashColor: Colors.pinkAccent,
                    padding: EdgeInsets.all(15),
                    onPressed: () {
                      /*...*/
                      Get.offAll(MainPage());
                    },
                    child: Text(
                      "RECALCULATE",
                      style: TextStyle(
                          fontSize: 35.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
