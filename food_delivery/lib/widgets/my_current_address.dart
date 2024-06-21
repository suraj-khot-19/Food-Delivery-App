import 'package:food_delivery/utils/exports.dart';

class MyCurrentAddress extends StatelessWidget {
  const MyCurrentAddress({super.key});

  void locationSearchBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Your Location"),
          content: TextFormField(
            decoration: const InputDecoration(hintText: "current address"),
          ),
          actions: [
            MaterialButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancel"),
            ),
            MaterialButton(
              onPressed: () => Navigator.pop(context),
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
                Text(
                  "kolhapur",
                  style: TextStyle(
                    color: AppColors.primary(context),
                    fontWeight: FontWeight.bold,
                  ),
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
