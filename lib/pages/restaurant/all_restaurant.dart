import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/big_text.dart';
import 'package:flutter_catalog/widgets/dimensions.dart';

class AllRestaurant extends StatelessWidget {
  const AllRestaurant({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
              shadowColor: Colors.transparent,
              backgroundColor: Colors.blue.shade100,
              title: BigText(
                text: "All Restaurant",
                color: Colors.black,
              )),
          body: Container(
            padding: EdgeInsets.all(Dimensions.height10),
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: Dimensions.width10,
                  mainAxisSpacing: Dimensions.height10,
                ),
                itemCount: 10,
                itemBuilder: ((context, index) => Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius10),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/iblues.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          child: BigText(
                            text: "Iblues",
                            color: Colors.white,
                          ),
                        ))
                    ))),
          )),
    );
  }
}
