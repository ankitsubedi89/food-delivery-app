import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/big_text.dart';

class AddToCart extends StatelessWidget {
  final String text;
  const AddToCart({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.amber.shade50),
      child: Row(
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
          )
        ],
      ),
    );
  }
}
