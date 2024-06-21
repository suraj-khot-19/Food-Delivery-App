import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;
  const MyTabBar({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TabBar(
        tabs: const [
          ///home
          Tab(child: Icon(Icons.home)),
          //settings
          Tab(child: Icon(Icons.settings)),
          //account
          Tab(child: Icon(Icons.person)),
        ],
        controller: tabController,
      ),
    );
  }
}
