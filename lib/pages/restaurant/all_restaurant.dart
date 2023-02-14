import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_catalog/widgets/build_hotel.dart';
import 'package:flutter_catalog/widgets/dimensions.dart';

class AllRestaurant extends StatelessWidget {
  const AllRestaurant({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
        GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          crossAxisSpacing: Dimensions.width10,
          mainAxisSpacing: Dimensions.height10,
        ),
        itemCount: 10,
        itemBuilder: ((context, index) => BuildHotel(index: index)))
    );
  }
}
