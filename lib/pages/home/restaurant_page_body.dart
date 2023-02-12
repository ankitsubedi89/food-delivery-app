import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/food/food_details.dart';
import 'package:flutter_catalog/widgets/big_text.dart';
import 'package:flutter_catalog/widgets/icon_text.dart';
import 'package:flutter_catalog/widgets/small_text.dart';
import 'package:get/get.dart';

class RestaurantPageBody extends StatefulWidget {
  RestaurantPageBody({super.key});

  @override
  State<RestaurantPageBody> createState() => _SlideshowFoodState();
}

class _SlideshowFoodState extends State<RestaurantPageBody> {
  final PageController pageController = PageController(viewportFraction: 0.9);
  var currentPageValue = 0.0;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        currentPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    print(MediaQuery.of(context).size.height);
    print(MediaQuery.of(context).size.width);
    return Column(
      children: [
        Container(
              margin: EdgeInsets.all(15),
              child: Row(
                 children: [ BigText(text: "Restaurant Near You", ),
          ]),
            ),
            
        Container(
          height: _mediaQuery.size.height * 0.36,
          // color: Colors.red,
          child: PageView.builder(
              controller: pageController,
              itemCount: 4,
              itemBuilder: ((context, index) {
                return _buildHotel(index);
              })),
        ),
        DotsIndicator(
          dotsCount: 4,
          position: currentPageValue,
          decorator: const DotsDecorator(
            color: Colors.black87, // Inactive color
            activeColor: Colors.redAccent,
          ),
        ),

        SizedBox(height: _mediaQuery.size.height * 0.012,),
        Container(
          margin: EdgeInsets.only(left: 15),
          child: Row(
            children: [
              BigText(text: "All Restaurant", size: 22,),
            ],
          )),
          SizedBox(height: _mediaQuery.size.height * 0.018,),

        // for popular restaurant
        ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: ((context, index) {
              return Container(
                margin: const EdgeInsets.only(right: 15, left: 15, bottom: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage("assets/images/iblues.png"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InkWell(
                                    onTap: (() {
                                      Get.to(() =>FoodDetails());
                                      // Get.back();
                                    }),
                                    child: BigText(text: "IBlues Restaurant and bar")),
                                  SizedBox(height: 5,),
                                  SmallText(text: "Nayabazar, Pokhara"),
                                  SizedBox(height: 5,),
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
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              );
            }))
      ],
    );
  }

  Widget _buildHotel(index) {
    // Matrix4 matrix = Matrix4.identity();

    var _mediaQuery = MediaQuery.of(context);
    return Stack(
      children: [
        Container(
          height: _mediaQuery.size.height * 0.30,
          margin: const EdgeInsets.only(left: 5, right: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: index.isEven ? Color(hashCode) : Color(0xff9294cc),
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/iblues.png"))),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
              height: _mediaQuery.size.height * 0.146,
              margin: const EdgeInsets.only(left: 35, right: 35, bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 5,
                      offset: Offset(0, 5)),
                  BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
                  BoxShadow(color: Colors.white, offset: Offset(5, 0)),
                ],
              ),
              child: Container(
                padding: EdgeInsets.only(right: 15, left: 15, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(text: 'IBlues Restaurant and Bar'),
                    SizedBox(
                      height: _mediaQuery.size.height * 0.012,
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
                          width: _mediaQuery.size.width * 0.024,
                        ),
                        const IconText(
                            icon: Icons.location_on,
                            text: '3.5km',
                            iconColor: Colors.green),
                        SizedBox(
                          width: _mediaQuery.size.width * 0.024,
                        ),
                        const IconText(
                            icon: Icons.timer_outlined,
                            text: '15min',
                            iconColor: Colors.orange)
                      ],
                    )
                  ],
                ),
              )),
        ),
      ],
    );
  }
}
