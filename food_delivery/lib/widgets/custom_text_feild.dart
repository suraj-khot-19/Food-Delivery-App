import 'package:food_delivery/utils/exports.dart';

class CustomTextFeild extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obsecureText;
  const CustomTextFeild(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obsecureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextFormField(
        controller: controller,
        obscureText: obsecureText,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: AppColors.primary(context)),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.primary(context)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.ternary(context)),
          ),
        ),
      ),
    );
  }
}
