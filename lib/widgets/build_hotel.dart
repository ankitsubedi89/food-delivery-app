import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/big_text.dart';
import 'package:flutter_catalog/widgets/dimensions.dart';
import 'package:flutter_catalog/widgets/icon_text.dart';
import 'package:flutter_catalog/widgets/small_text.dart';


class BuildHotel extends StatelessWidget {
  final int index;
  const BuildHotel({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
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