import 'package:flutter/cupertino.dart';
import 'package:food_delivery/auth/auth_service.dart';
import 'package:food_delivery/utils/exports.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.surface(context),
      appBar: AppBar(
        title: const Text("setting"),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  Provider.of<ThemeProvider>(context, listen: false)
                              .isDarkTheme ==
                          true
                      ? "Dark Theme"
                      : "Light Theme",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                CupertinoSwitch(
                  activeColor: Colors.cyan,
                  value: Provider.of<ThemeProvider>(context, listen: false)
                      .isDarkTheme,
                  onChanged: (value) {
                    Provider.of<ThemeProvider>(context, listen: false)
                        .toggleTheme();
                  },
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 30),
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Divider(
              color: AppColors.secoundry(context),
            ),
          ),
          Text(AuthService().currentUser()!.email.toString()),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 30),
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Divider(
              color: AppColors.secoundry(context),
            ),
          ),
        ],
      ),
    );
  }
}
