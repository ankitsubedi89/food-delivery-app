import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/food/food_details.dart';
import 'package:flutter_catalog/pages/home/main_screen.dart';
import 'package:flutter_catalog/pages/restaurant/all_restaurant.dart';
import 'package:tabnavigator/tabnavigator.dart';

import '../pages/tabs/tab_one.dart';

class NavBar extends StatefulWidget {
  const NavBar({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<NavBar> {
  final _tabController = StreamController<AppTab>.broadcast();
  final _initTab = AppTab.home;

  Stream<AppTab> get tabStream => _tabController.stream;

  final _map = <AppTab, TabBuilder>{
    AppTab.home: () {
      return TabOne();
    },
    // AppTab.restaurant: () {
    //   return AllRestaurant();
    // },
    AppTab.carts: () {
      return FoodDetails();
    },
    AppTab.account: () {
      return Column(
        children: const [],
      );
    }
  };

  Widget _buildBody() {
    return TabNavigator(
      initialTab: _initTab,
      selectedTabStream: tabStream,
      mappedTabs: _map,
    );
  }

  Widget _buildbottomNavigationBar() {
    return StreamBuilder<AppTab>(
      stream: tabStream,
      initialData: _initTab,
      builder: (context, snapshot) {
        return BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.restaurant),
            //   label: 'Restaurant',
            // ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Account',
            ),
          ],
          currentIndex: snapshot.hasData ? snapshot.data!.value : 0,
          onTap: (value) => _tabController.sink.add(AppTab.byValue(value)),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: _buildbottomNavigationBar(),
    );
  }

  @override
  void dispose() {
    _tabController.close();
    super.dispose();
  }
}

class AppTab extends TabType {
  const AppTab._(int value) : super(value);

  static const home = AppTab._(0);
  // static const restaurant = AppTab._(1);
  static const carts = AppTab._(1);
  static const account = AppTab._(2);

  static AppTab byValue(int value) {
    switch (value) {
      case 0:
        return home;
      // case 1:
      //   return restaurant;
      case 1:
        return carts;
      case 2:
        return account;
      default:
        throw Exception('no tab for such value');
    }
  }
}