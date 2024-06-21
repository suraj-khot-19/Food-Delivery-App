import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_model.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;
  const MyTabBar({super.key, required this.tabController});

//category tabs
  List<Tab> _categoryTabs() {
    return FoodCategories.values.map((category) {
      return Tab(
        text: category.toString().split(".").last,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TabBar(
        tabs: _categoryTabs(),
        controller: tabController,
      ),
    );
  }
}
