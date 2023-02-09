import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/app_icon.dart';
import 'package:flutter_catalog/widgets/big_text.dart';
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
            child: Container(
              child: SmallText(
                  text:
                      "Chicken momo is a popular dish originating from the Himalayan region of Nepal, Tibet, and India. It is a type of steamed dumpling that is usually filled with minced chicken and spices, and sometimes vegetables. The dough is made from flour and water and the filled dumplings are usually steamed or fried and served with a spicy dipping sauce. Chicken momos are a staple food in the region and are enjoyed as a snack, main course, or street food. Chicken momo is a popular dish originating from the Himalayan region of Nepal, Tibet, and India. It is a type of steamed dumpling that is usually filled with minced chicken and spices, and sometimes vegetables. The dough is made from flour and water and the filled dumplings are usually steamed or fried and served with a spicy dipping sauce. Chicken momos are a staple food in the region and are enjoyed as a snack, main course, or street food Chicken momo is a popular dish originating from the Himalayan region of Nepal, Tibet, and India. It is a type of steamed dumpling that is usually filled with minced chicken and spices, and sometimes vegetables. The dough is made from flour and water and the filled dumplings are usually steamed or fried and served with a spicy dipping sauce. Chicken momos are a staple food in the region and are enjoyed as a snack, main course, or street food. Chicken momo is a popular dish originating from the Himalayan region of Nepal, Tibet, and India. It is a type of steamed dumpling that is usually filled with minced chicken and spices, and sometimes vegetables. The dough is made from flour and water and the filled dumplings are usually steamed or fried and served with a spicy dipping sauce. Chicken momos are a staple food in the region and are enjoyed as a snack, main course, or street food. Chicken momo is a popular dish originating from the Himalayan region of Nepal, Tibet, and India. It is a type of steamed dumpling that is usually filled with minced chicken and spices, and sometimes vegetables. The dough is made from flour and water and the filled dumplings are usually steamed or fried and served with a spicy dipping sauce. Chicken momos are a staple food in the region and are enjoyed as a snack, main course, or street food. Chicken momo is a popular dish originating from the Himalayan region of Nepal, Tibet, and India. It is a type of steamed dumpling that is usually filled with minced chicken and spices, and sometimes vegetables. The dough is made from flour and water and the filled dumplings are usually steamed or fried and served with a spicy dipping sauce. Chicken momos are a staple food in the region and are enjoyed as a snack, main course, or street food. Chicken momo is a popular dish originating from the Himalayan region of Nepal, Tibet, and India. It is a type of steamed dumpling that is usually filled with minced chicken and spices, and sometimes vegetables. The dough is made from flour and water and the filled dumplings are usually steamed or fried and served with a spicy dipping sauce. Chicken momos are a staple food in the region and are enjoyed as a snack, main course, or street food. Chicken momo is a popular dish originating from the Himalayan region of Nepal, Tibet, and India. It is a type of steamed dumpling that is usually filled with minced chicken and spices, and sometimes vegetables. The dough is made from flour and water and the filled dumplings are usually steamed or fried and served with a spicy dipping sauce. Chicken momos are a staple food in the region and are enjoyed as a snack, main course, or street food.", 
                      color: Colors.black, lineSpacing: 1.8,),
            ),
          )
        ],
      ),
    );
  }
}
