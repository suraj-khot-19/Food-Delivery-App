import 'package:food_delivery/utils/exports.dart';

class MyReceipt extends StatelessWidget {
  const MyReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
              child: Text(
            "Thank You for your order!",
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
          const AddVerticleSpace(height: 30),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: AppColors.inversePrimary(context),
              ),
            ),
            child: Consumer<Restorant>(
              builder: (context, restorant, child) {
                return Text(restorant.receipt());
              },
            ),
          ),
          const AddVerticleSpace(height: 25),
          const Text("Delivery till 12:50 PM!"),
        ],
      ),
    );
  }
}
