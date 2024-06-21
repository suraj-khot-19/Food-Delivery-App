import 'package:food_delivery/utils/exports.dart';

class MyFoodTile extends StatelessWidget {
  final Food food;
  final VoidCallback onTap;
  const MyFoodTile({super.key, required this.food, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        food.name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "${food.price.toInt()} ₹",
                        style: TextStyle(color: AppColors.primary(context)),
                      ),
                      const AddVerticleSpace(height: 10),
                      Text(
                        food.description,
                        style:
                            TextStyle(color: AppColors.inversePrimary(context)),
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                const AddHorizontalSpace(width: 5),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    food.imgPath,
                    height: 150,
                    width: 130,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Divider(
            color: AppColors.inversePrimary(context),
            indent: 25,
            endIndent: 25,
          ),
        )
      ],
    );
  }
}
