import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/add_to_cart.dart';
import 'package:flutter_catalog/widgets/app_icon.dart';
import 'package:flutter_catalog/widgets/big_text.dart';
import 'package:flutter_catalog/widgets/description_text.dart';
import 'package:flutter_catalog/widgets/small_text.dart';

class PopularFood extends StatelessWidget {
  const PopularFood({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight:80 ,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
              AppIcon(icon: Icons.clear,),
              AppIcon(icon: Icons.shopping_cart_outlined)
            ]),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                padding: EdgeInsets.only(top: 5, bottom: 10),
                color: Colors.white,
                width: double.maxFinite,
                child: Center(child: BigText(text: "Momo"))),
            ),
            pinned: true,
            backgroundColor: Color.fromARGB(255, 62, 58, 172),
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/momo.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child:const DescriptionText(text:  "Chicken momo is a popular dish originating from the Himalayan region of Nepal, Tibet, and India. It is a type of steamed dumpling that is usually filled with minced chicken and spices, and sometimes vegetables. The dough is made from flour and water and the filled dumplings are usually steamed or fried and served with a spicy dipping sauce. Chicken momos are a staple food in the region and are enjoyed as a snack, main course, or street food. Chicken momo is a popular dish originating from the Himalayan region of Nepal, Tibet, and India. It is a type of steamed dumpling that is usually filled with minced chicken and spices, and sometimes vegetables. The dough is made from flour and water and the filled dumplings are usually steamed or fried and served with a spicy dipping sauce. Chicken momos are a staple food in the region and are enjoyed as a snack, main course, or street food Chicken momo is a popular dish originating from the Himalayan region of Nepal, Tibet, and India. It is a type of steamed dumpling that is usually filled with minced chicken and spices, and sometimes vegetables. The dough is made from flour and water and the filled dumplings are usually steamed or fried and served with a spicy dipping sauce. Chicken momos are a staple food in the region and are enjoyed as a snack, main course, or street food. Chicken momo is a popular dish originating from the Himalayan region of Nepal, Tibet, and India. It is a type of steamed dumpling that is usually filled with minced chicken and spices, and sometimes vegetables. The dough is made from flour and water and the filled dumplings are usually steamed or fried and served with a spicy dipping sauce. Chicken momos are a staple food in the region and are enjoyed as a snack, main course, or street food. Chicken momo is a popular dish originating from the Himalayan region of Nepal, Tibet, and India. It is a type of steamed dumpling that is usually filled with minced chicken and spices, and sometimes vegetables. The dough is made from flour and water and the filled dumplings are usually steamed or fried and served with a spicy dipping sauce. Chicken momos are a staple food in the region and are enjoyed as a snack, main course, or street food. Chicken momo is a popular dish originating from the Himalayan region of Nepal, Tibet, and India. It is a type of steamed dumpling that is usually filled with minced chicken and spices, and sometimes vegetables. The dough is made from flour and water and the filled dumplings are usually steamed or fried and served with a spicy dipping sauce. Chicken momos are a staple food in the region and are enjoyed as a snack, main course, or street food. Chicken momo is a popular dish originating from the Himalayan region of Nepal, Tibet, and India. It is a type of steamed dumpling that is usually filled with minced chicken and spices, and sometimes vegetables. The dough is made from flour and water and the filled dumplings are usually steamed or fried and served with a spicy dipping sauce. Chicken momos are a staple food in the region and are enjoyed as a snack, main course, or street food. Chicken momo is a popular dish originating from the Himalayan region of Nepal, Tibet, and India. It is a type of steamed dumpling that is usually filled with minced chicken and spices, and sometimes vegetables. The dough is made from flour and water and the filled dumplings are usually steamed or fried and served with a spicy dipping sauce. Chicken momos are a staple food in the region and are enjoyed as a snack, main course, or street food."
                  ),
                  decoration: BoxDecoration(),
                ),
              ],
            ),
          )
        ],
      ),
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
