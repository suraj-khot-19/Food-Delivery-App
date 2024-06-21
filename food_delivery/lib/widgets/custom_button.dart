import 'package:food_delivery/utils/exports.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final Function()? onTap;
  const CustomButton({super.key, required this.label, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 25),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: AppColors.secoundry(context),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 1, color: AppColors.secoundry(context)),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: AppColors.inversePrimary(context),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
