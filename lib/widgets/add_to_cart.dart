import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/big_text.dart';
import 'package:flutter_catalog/widgets/dimensions.dart';
import 'package:flutter_catalog/widgets/small_text.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({super.key, });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        height: Dimensions.height120,
        // width: 150,
        padding: EdgeInsets.all(Dimensions.height15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            color: Color.fromARGB(199, 213, 203, 203)),
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
                      Icon(Icons.add),
                      SizedBox(width: Dimensions.width10),
                      BigText(text: "0"),
                      SizedBox(width: Dimensions.width10),
                      Icon(Icons.remove)
                    ],
                  )),
            ),
            Container(
              height: Dimensions.height50,
              width: Dimensions.width160,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: SmallText(
                text: "Rs.200 | Add to Cart",
                size: Dimensions.font15,
                color: Colors.white,
              )),
            )
          ],
        ),
      ),
    );
  }
}
