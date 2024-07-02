// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:food_delivery/auth/auth_service.dart';
import 'package:food_delivery/screens/login_screen.dart';
import 'package:food_delivery/screens/setting_screen.dart';
import 'package:food_delivery/utils/app_colors.dart';
import 'package:food_delivery/widgets/home_drawer_tile.dart';

class HomeDrawer extends StatefulWidget {
  const HomeDrawer({super.key});

  @override
  State<HomeDrawer> createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  AuthService authService = AuthService();
  //logout
  void logout() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Food Delivery"),
            content: const Text("Are you sure to logout?"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Cancel"),
              ),
              TextButton(
                  onPressed: () async {
                    Navigator.pop(context);
                    await authService.logOut();
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: const Text("Confirm"))
            ],
          );
        });
  }

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
            onTap: () => logout(),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
