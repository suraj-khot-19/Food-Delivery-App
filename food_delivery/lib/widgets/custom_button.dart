import 'package:food_delivery/utils/exports.dart';

class CustomButton extends StatefulWidget {
  final String label;
  final Function()? onTap;
  final bool isLoading;
  const CustomButton(
      {super.key, required this.label, this.onTap, this.isLoading = false});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: 50,
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: AppColors.secoundry(context),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 1, color: AppColors.secoundry(context)),
        ),
        child: Center(
          child: !widget.isLoading
              ? Text(
                  widget.label,
                  style: TextStyle(
                    color: AppColors.inversePrimary(context),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                )
              : CircularProgressIndicator(
                  color: AppColors.inversePrimary(context),
                ),
        ),
      ),
    );
  }
}
