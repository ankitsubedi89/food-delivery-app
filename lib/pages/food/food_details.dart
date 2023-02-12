import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/add_to_cart.dart';
import 'package:flutter_catalog/widgets/description_text.dart';

import '../../widgets/app_icon.dart';
import '../../widgets/big_text.dart';
import '../../widgets/icon_text.dart';
import '../../widgets/small_text.dart';

class FoodDetails extends StatelessWidget {
  int radius = 10;
  FoodDetails({super.key});

  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.of(context).size.height);
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Stack(children: [
        Positioned(
          left: 0,
          right: 0,
          child: Container(
            width: double.infinity,
            height: _mediaQuery.size.height * 0.4,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/momo.png"))),
          ),
        ),
        Positioned(
            top: _mediaQuery.size.height * 0.33,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BigText(text: "Momos"),
                      const SizedBox(
                        height: 5,
                      ),
                      SmallText(text: "Nayabazar, Pokhara"),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(
                                5,
                                (index) => const Icon(
                                      Icons.star,
                                      color: Colors.black,
                                      size: 18,
                                    )),
                          ),
                          SizedBox(
                            width: _mediaQuery.size.width * 0.05,
                          ),
                          SmallText(text: '4.5'),
                          SizedBox(
                            width: _mediaQuery.size.width * 0.05,
                          ),
                          SmallText(text: '102 comments')
                        ],
                      ),
                      SizedBox(
                        height: _mediaQuery.size.height * 0.012,
                      ),
                      Row(
                        children: [
                          const IconText(
                              icon: Icons.circle_sharp,
                              text: 'Restaurant',
                              iconColor: Colors.orange),
                          SizedBox(
                            width: _mediaQuery.size.width * 0.081,
                          ),
                          const IconText(
                              icon: Icons.location_on,
                              text: '3.5km',
                              iconColor: Colors.green),
                          SizedBox(
                            width: _mediaQuery.size.width * 0.081,
                          ),
                          const IconText(
                              icon: Icons.timer_outlined,
                              text: '15min',
                              iconColor: Colors.orange)
                        ],
                      ),
                      SizedBox(height: _mediaQuery.size.height * 0.025),
                      BigText(text: "Description", size: 26),
                      SizedBox(
                        height: _mediaQuery.size.height * 0.025,
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
            )),
        Positioned(
            top: 60,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AppIcon(icon: Icons.arrow_back),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ))
      ]),
      bottomNavigationBar: Container(
        height: 120,
        // width: 150,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            color: Color.fromARGB(199, 213, 203, 203)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Icon(Icons.add),
                      SizedBox(width: 10),
                      BigText(text: "0"),
                      SizedBox(width: 10),
                      Icon(Icons.remove)
                    ],
                  )),
            ),
            Container(
              height: 50,
              width: 160,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: SmallText(
                text: "Rs.200 | Add to Cart",
                size: 14,
                color: Colors.white,
              )),
            )
          ],
        ),
      ),
    );
  }
}
