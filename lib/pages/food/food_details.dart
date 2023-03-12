import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/demo_button.dart';
import 'package:flutter_catalog/widgets/description_text.dart';
import 'package:flutter_catalog/widgets/dimensions.dart';
import 'package:get/get.dart';

import '../../widgets/app_icon.dart';
import '../../widgets/big_text.dart';
import '../../widgets/icon_text.dart';
import '../../widgets/small_text.dart';

class FoodDetails extends StatelessWidget {
  int radius = 10;
  FoodDetails({super.key});

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    print(MediaQuery.of(context).size.width);
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Stack(children: [
        Positioned(
          left: 0,
          right: 0,
          child: Container(
            width: double.infinity,
            height: Dimensions.height330,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/momo.png"))),
          ),
        ),
        Positioned(
          top: Dimensions.height300,
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(Dimensions.radius20),
            ),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimensions.radius10),
                      topLeft: Radius.circular(Dimensions.radius10))),
              child: Padding(
                padding: EdgeInsets.all(Dimensions.height10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(
                      text: "Momos",
                      size: Dimensions.font22,
                    ),
                    SizedBox(
                      height: Dimensions.height15,
                    ),
                    SmallText(text: "Nayabazar, Pokhara"),
                    SizedBox(
                      height: Dimensions.height15,
                    ),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(
                              5,
                              (index) => Icon(
                                    Icons.star,
                                    color: Colors.black,
                                    size: Dimensions.iconSize30,
                                  )),
                        ),
                        SizedBox(
                          width: Dimensions.width20,
                        ),
                        SmallText(text: '4.5'),
                        SizedBox(
                          width: Dimensions.width20,
                        ),
                        SmallText(text: '102 comments')
                      ],
                    ),
                    SizedBox(
                      height: Dimensions.height15,
                    ),
                    Row(
                      children: [
                        const IconText(
                            icon: Icons.circle_sharp,
                            text: 'Restaurant',
                            iconColor: Colors.orange),
                        SizedBox(
                          width: Dimensions.width25,
                        ),
                        const IconText(
                            icon: Icons.location_on,
                            text: '3.5km',
                            iconColor: Colors.green),
                        SizedBox(
                          width: Dimensions.width25,
                        ),
                        const IconText(
                            icon: Icons.timer_outlined,
                            text: '15min',
                            iconColor: Colors.orange)
                      ],
                    ),
                    SizedBox(height: Dimensions.height20),
                    BigText(text: "Description", size: Dimensions.font26),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    const Expanded(
                        child: SingleChildScrollView(
                            child: DescriptionText(
                      text:
                          "Chicken momo is a popular dish originating from the Himalayan region of Nepal, Tibet, and India. It is a type of steamed dumpling that is usually filled with minced chicken and spices, and sometimes vegetables. The dough is made from flour and water and the filled dumplings are usually steamed or fried and served with a spicy dipping sauce. Chicken momos are a staple food in the region and are enjoyed as a snack, main course, or street food. Chicken momo is a popular dish originating from the Himalayan region of Nepal, Tibet, and India. It is a type of steamed dumpling that is usually filled with minced chicken and spices, and sometimes vegetables. The dough is made from flour and water and the filled dumplings are usually steamed or fried and served with a spicy dipping sauce. Chicken momos are a staple food in the region and are enjoyed as a snack, main course, or street food.",
                    )))
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
            top: Dimensions.height60,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: (() => Get.back()),
                    child: const AppIcon(icon: Icons.arrow_back)),
                const AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ))
      ]),
      bottomNavigationBar: Container(
        height: 120,
        // width: 150,
        padding: EdgeInsets.all(Dimensions.height15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.radius10),
                topRight: Radius.circular(Dimensions.radius10)),
            color: const Color.fromARGB(199, 213, 203, 203)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Container(
                  height: Dimensions.height50,
                  width: Dimensions.width100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      const Icon(Icons.add),
                      SizedBox(width: Dimensions.width10),
                      BigText(text: "0"),
                      SizedBox(width: Dimensions.width10),
                      const Icon(Icons.remove)
                    ],
                  )),
            ),
            Container(
              height: Dimensions.height50,
              width: Dimensions.width160,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(Dimensions.radius10)),
              child: Center(
                  child: SmallText(
                text: "Rs.200 | Add to Cart",
                size: Dimensions.font14,
                color: Colors.white,
              )),
            )
          ],
        ),
      ),
    );
  }
}
