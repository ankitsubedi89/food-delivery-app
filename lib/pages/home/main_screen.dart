import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home/restaurant_page_body.dart';
import 'package:flutter_catalog/widgets/big_text.dart';
import 'package:flutter_catalog/widgets/dimensions.dart';
import 'package:flutter_catalog/widgets/navigationbar.dart';
import 'package:flutter_catalog/widgets/small_text.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: Dimensions.height10, bottom: Dimensions.height10 ),
              padding: EdgeInsets.only(left: Dimensions.width10, right: Dimensions.width10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [BigText(text: "Nepal", size: Dimensions.font30,),
                     Row(
                       children: [
                         SmallText(text: "Pokhara", size: Dimensions.font15,),
                         Icon(Icons.arrow_drop_down_rounded)
                       ],
                     )],
                  ),
                  Container(
                    height: Dimensions.height50,
                    width: Dimensions.width50,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(Dimensions.radius10)),
                    child: const Icon(Icons.search, color: Colors.white),
                  )
                ],
              ),    
            ),
            
            Expanded(child: SingleChildScrollView(
              child: RestaurantPageBody(),
            ))
          ],
        ),
        bottomNavigationBar: NavBar(),
      ),
    );
  }
}
