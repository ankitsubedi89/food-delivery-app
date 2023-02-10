import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/food/food_details.dart';
import 'package:flutter_catalog/pages/food/popular_food.dart';
import 'package:flutter_catalog/pages/home/restaurant_page_body.dart';
import 'package:flutter_catalog/widgets/add_to_cart.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'pages/home/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FoodDetails(),
    );
  }
}
