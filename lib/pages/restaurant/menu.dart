import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/dimensions.dart';
import 'package:get/get.dart';

import '../../widgets/big_text.dart';
import '../food/food_details.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
              shadowColor: Colors.transparent,
              backgroundColor: Colors.white,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                color: Colors.black,
                onPressed: () => Get.back(),
              ),
              title: BigText(
                text: "Menu",
                color: Colors.black,
              )),
          body: InkWell(
            onTap: () => Get.to(() => FoodDetails()),
            child: Container(
              padding: EdgeInsets.all(Dimensions.height10),
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: Dimensions.width10,
                    mainAxisSpacing: Dimensions.height10,
                  ),
                  itemCount: 10,
                  itemBuilder: ((context, index) => Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius:
                              BorderRadius.circular(Dimensions.radius10),
                        ),
                        
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            child: Center(
                              child: BigText(
                                text: "Momos",
                                color: Colors.white,
                              ),
                            ),
                          ))
                      ))),
            ),
          )),
    );;
  }
}