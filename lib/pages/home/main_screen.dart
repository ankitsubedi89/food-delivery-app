import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home/restaurant_page_body.dart';
import 'package:flutter_catalog/widgets/big_text.dart';
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
              margin: EdgeInsets.only(top: 10, bottom: 10 ),
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [BigText(text: "Nepal", size: 30,),
                     Row(
                       children: [
                         SmallText(text: "Pokhara", size: 15,),
                         Icon(Icons.arrow_drop_down_rounded)
                       ],
                     )],
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    child: Icon(Icons.search, color: Colors.white),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                  )
                ],
              ),    
            ),
            
            Expanded(child: SingleChildScrollView(
              child: RestaurantPageBody(),
            ))
          ],
        ),
      ),
    );
  }
}
