import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home/main_screen.dart';


void main() {
  runApp(const MaterialApp(home: GetMaterialApp(
    home: MainScreen(),
    debugShowCheckedModeBanner: false,
  ),));
}

