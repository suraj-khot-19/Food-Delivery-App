import 'package:food_delivery/utils/exports.dart';

class HomeDrawerTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  const HomeDrawerTile(
      {super.key,
      required this.title,
      required this.onTap,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: InkWell(
        onTap: onTap,
        child: ListTile(
          title: Text(
            title,
            style: TextStyle(color: AppColors.inversePrimary(context)),
          ),
          leading: Icon(
            icon,
            color: AppColors.inversePrimary(context),
          ),
        ),
      ),
    );
  }
}
