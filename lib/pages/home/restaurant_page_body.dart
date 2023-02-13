import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/food/food_details.dart';
import 'package:flutter_catalog/widgets/big_text.dart';
import 'package:flutter_catalog/widgets/dimensions.dart';
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
          margin: EdgeInsets.only(top: Dimensions.height15, left: Dimensions.width10, right: Dimensions.width10, bottom: Dimensions.height10),
          child: Row(children: [
            BigText(
              text: "Restaurant Near You",
            ),
          ]),
        ),

        Container(
          height: Dimensions.pageViewContainer,
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

        SizedBox(
          height: Dimensions.height10,
        ),
        Container(
            margin: EdgeInsets.only(left: Dimensions.width10),
            child: Row(
              children: [
                BigText(
                  text: "All Restaurant",
                  size: Dimensions.font22,
                ),
              ],
            )),
        SizedBox(
          height: Dimensions.height15,
        ),

        // for popular restaurant
        ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: ((context, index) {
              return Container(
                margin: EdgeInsets.only(right: Dimensions.width15, left: Dimensions.width10, bottom: Dimensions.height10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: Dimensions.height100,
                          width: Dimensions.width100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(Dimensions.radius10),
                            image: const DecorationImage(
                                image: AssetImage("assets/images/iblues.png"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: Dimensions.height100,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(Dimensions.radius10),),
                            child: Padding(
                              padding: EdgeInsets.all(Dimensions.height10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InkWell(
                                      onTap: (() {
                                        Get.to(() => FoodDetails());
                                        // Get.back();
                                      }),
                                      child: BigText(
                                          text: "IBlues Restaurant and bar")),
                                  SizedBox(
                                    height: Dimensions.height8,
                                  ),
                                  SmallText(text: "Nayabazar, Pokhara"),
                                  SizedBox(
                                    height: Dimensions.height8,
                                  ),
                                  Row(
                                    children: [
                                      const IconText(
                                          icon: Icons.circle_sharp,
                                          text: 'Restaurant',
                                          iconColor: Colors.orange),
                                      SizedBox(
                                        width: Dimensions.width5,
                                      ),
                                      const IconText(
                                          icon: Icons.location_on,
                                          text: '3.5km',
                                          iconColor: Colors.green),
                                      SizedBox(
                                        width: Dimensions.width5,
                                      ),
                                      const IconText(
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

    return Stack(
      children: [
        Container(
          height: Dimensions.height250,
          margin: EdgeInsets.only(left: Dimensions.width5, right: Dimensions.width5),
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
              height: Dimensions.height120,
              margin: EdgeInsets.only(left: Dimensions.width35, right: Dimensions.width35, bottom: Dimensions.height20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
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
                padding: EdgeInsets.only(right: Dimensions.width10, left: Dimensions.width10, top: Dimensions.height10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(text: 'IBlues Restaurant and Bar'),
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
                                    size: Dimensions.iconSize22,
                                  )),
                        ),
                        SizedBox(
                          width: Dimensions.width10,
                        ),
                        SmallText(text: '4.5'),
                        SizedBox(
                          width: Dimensions.width10,
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
                          width: Dimensions.width10,
                        ),
                        const IconText(
                            icon: Icons.location_on,
                            text: '3.5km',
                            iconColor: Colors.green),
                        SizedBox(
                          width: Dimensions.width10,
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
