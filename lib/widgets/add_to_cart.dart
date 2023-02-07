import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/big_text.dart';
import 'package:flutter_catalog/widgets/small_text.dart';

class AddToCart extends StatelessWidget {
  final String text;
  const AddToCart({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 150,
        // width: 150,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.red),
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
                      BigText(text: text),
                      SizedBox(width: 10),
                      Icon(Icons.remove)
                    ],
                  )),
            ),
            Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: SmallText(
                text: "Rs. 200 Add to Cart",
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
