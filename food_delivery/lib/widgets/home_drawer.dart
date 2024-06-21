import 'package:flutter/material.dart';
import 'package:food_delivery/screens/setting_screen.dart';
import 'package:food_delivery/utils/app_colors.dart';
import 'package:food_delivery/widgets/home_drawer_tile.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.surface(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 100,
          ),
          Icon(
            Icons.lock_open_rounded,
            size: 80,
            color: AppColors.inversePrimary(context),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 30),
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Divider(
              color: AppColors.secoundry(context),
            ),
          ),
          HomeDrawerTile(
            title: "H O M E",
            icon: Icons.home,
            onTap: () {
              Navigator.pop(context);
            },
          ),
          HomeDrawerTile(
            title: "S E T T I N G S",
            icon: Icons.settings,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const SettingScreen();
              }));
            },
          ),
          const Spacer(),
          HomeDrawerTile(
            title: "L O G O U T",
            icon: Icons.logout,
            onTap: () {},
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
