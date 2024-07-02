import 'package:food_delivery/utils/exports.dart';

class MyDescription extends StatelessWidget {
  const MyDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.secoundry(context),
          ),
          borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.only(left: 25, bottom: 25, right: 25),
      child: Consumer<Restorant>(
        builder: (context, value, child) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    value.formatMoney(50),
                    style: TextStyle(
                      color: AppColors.inversePrimary(context),
                    ),
                  ),
                  Text(
                    "Total Fee",
                    style: TextStyle(
                      color: AppColors.primary(context),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "25 : 00 Min",
                    style: TextStyle(
                      color: AppColors.inversePrimary(context),
                    ),
                  ),
                  Text(
                    "Delivery Till",
                    style: TextStyle(
                      color: AppColors.primary(context),
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
