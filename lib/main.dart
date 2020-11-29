import 'package:bmifluttercalculator/Screens/mainPage.dart';
import 'package:bmifluttercalculator/Screens/resultPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    debugShowMaterialGrid: false,
    initialRoute: '/main',
    theme: ThemeData(
        accentColor: const Color(0xff090E21),
        primaryColor: const Color(0xff090E21)),
    defaultTransition: Transition.zoom,
    getPages: [
      GetPage(name: '/main', page: () => MainPage()),
      GetPage(name: '/result', page: () => ResultPage()),
    ],
  ));
}
