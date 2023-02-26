import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/food/food_details.dart';
import 'package:flutter_catalog/pages/restaurant/all_restaurant.dart';
import 'package:flutter_catalog/widgets/big_text.dart';
import 'package:flutter_catalog/widgets/build_hotel.dart';
import 'package:flutter_catalog/widgets/dimensions.dart';
import 'package:flutter_catalog/widgets/icon_text.dart';
import 'package:flutter_catalog/widgets/small_text.dart';
import 'package:get/get.dart';

class RestaurantPageBody extends StatefulWidget {
  const RestaurantPageBody({super.key});

  @override
  State<RestaurantPageBody> createState() => _SlideshowFoodState();
}

class _SlideshowFoodState extends State<RestaurantPageBody> {
  final PageController pageController = PageController(viewportFraction: 0.9, initialPage: 0);
  var currentPageValue = 0.0;
  int _currentPage = 0;
  bool end = false;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
        @override
        void initState() {
          super.initState();
          pageController.addListener(() {
            setState(() {
              currentPageValue = pageController.page!;
            });
          }); 
        }
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(
              top: Dimensions.height15,
              left: Dimensions.width10,
              right: Dimensions.width10,
              bottom: Dimensions.height10),
          child: Row(children: [
            BigText(
              text: "Restaurant Near You",
            ),
          ]),
        ),

        // SizedBox(
        //   height: Dimensions.pageViewContainer,
        //   // color: Colors.red,
        //   child: PageView.builder(
        //       controller: pageController,
        //       itemCount: 4,
        //       itemBuilder: ((context, index) {
        //         return BuildHotel(index: index);
        //       })),
        // ),

        CarouselSlider( options: CarouselOptions(
          height: Dimensions.pageViewContainer,
          viewportFraction: 0.9,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 2000),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          onPageChanged: (index, reason) {
            setState(() {
              _currentPage = index;
            });
          },
          scrollDirection: Axis.horizontal,
        ), items: [
          BuildHotel(index: 0),
          BuildHotel(index: 1),
          BuildHotel(index: 2),
          BuildHotel(index: 3),
        ].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                child: i,
              );
            },
          );
        }).toList(
        )),
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
            margin: EdgeInsets.only(
                left: Dimensions.width10, right: Dimensions.width10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BigText(
                  text: "All Restaurant",
                  size: Dimensions.font22,
                ),
                InkWell(
                  onTap: () => Get.to(() => AllRestaurant()),
                  child: SmallText(
                    text: "See All",
                    size: Dimensions.font14,
                  ),
                )
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
                margin: EdgeInsets.only(
                    right: Dimensions.width15,
                    left: Dimensions.width10,
                    bottom: Dimensions.height10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: Dimensions.height100,
                          width: Dimensions.width100,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Dimensions.radius10),
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
                              borderRadius:
                                  BorderRadius.circular(Dimensions.radius10),
                            ),
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
}
