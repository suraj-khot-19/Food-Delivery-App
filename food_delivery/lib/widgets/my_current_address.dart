import 'package:food_delivery/utils/exports.dart';

class MyCurrentAddress extends StatefulWidget {
  const MyCurrentAddress({super.key});

  @override
  State<MyCurrentAddress> createState() => _MyCurrentAddressState();
}

class _MyCurrentAddressState extends State<MyCurrentAddress> {
//controller
  TextEditingController addressController = TextEditingController();
  void locationSearchBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Update Location."),
          content: TextFormField(
            controller: addressController,
            decoration: const InputDecoration(hintText: "update address"),
          ),
          actions: [
            MaterialButton(
              onPressed: () {
                Navigator.pop(context);
                addressController.clear();
              },
              child: const Text("Cancel"),
            ),
            MaterialButton(
              onPressed: () {
                //updating address
                String newAddress = addressController.text;
                context.read<Restorant>().updateAddress(newAddress);
                Navigator.pop(context);
              },
              child: const Text("Save"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Diliver now",
            style: TextStyle(color: AppColors.primary(context)),
          ),
          GestureDetector(
            onTap: () => locationSearchBox(context),
            child: Row(
              children: [
                //address
                Consumer<Restorant>(
                  builder: (context, value, child) {
                    return Text(
                      value.deliveryAddress,
                      style: TextStyle(
                        color: AppColors.primary(context),
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  },
                ),
                const Icon(Icons.keyboard_arrow_down_rounded)
              ],
            ),
          )
        ],
      ),
    );
  }
}
