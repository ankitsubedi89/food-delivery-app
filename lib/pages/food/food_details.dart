import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/description_text.dart';

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
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/momo.png"))),
          ),
        ),
        Positioned(
            top: _mediaQuery.size.height*0.33,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BigText(text: "Momos"),
                      SizedBox(
                        height: 5,
                      ),
                      SmallText(text: "Nayabazar, Pokhara"),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: const [
                          IconText(
                              icon: Icons.circle_sharp,
                              text: 'Restaurant',
                              iconColor: Colors.orange),
                          SizedBox(
                            width: 5,
                          ),
                          IconText(
                              icon: Icons.location_on,
                              text: '3.5km',
                              iconColor: Colors.green),
                          SizedBox(
                            width: 5,
                          ),
                          IconText(
                              icon: Icons.timer_outlined,
                              text: '15min',
                              iconColor: Colors.orange)
                        ],
                      ),
                      SizedBox(height: _mediaQuery.size.height * 0.025),
                      BigText(text: "Description" ,size: 26), 
                      DescriptionText(text: "Chicken momo is a popular dish originating from the Himalayan region of Nepal, Tibet, and India. It is a type of steamed dumpling that is usually filled with minced chicken and spices, and sometimes vegetables. The dough is made from flour and water and the filled dumplings are usually steamed or fried and served with a spicy dipping sauce. Chicken momos are a staple food in the region and are enjoyed as a snack, main course, or street food.")
                    ],
                  ),
                ),
              ),
            ))
      ]),
    );
  }
}
