import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'routes/routes.dart';


void main() {

  runApp(GetMaterialApp(
    title: '不语',
    theme: ThemeData(
      primarySwatch: Colors.deepOrange,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    defaultTransition: Transition.circularReveal,
    initialRoute: PAGE_LOGIN.path,
    getPages: GetPages,
  ));
}
