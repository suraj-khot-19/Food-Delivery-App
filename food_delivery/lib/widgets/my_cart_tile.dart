import 'package:food_delivery/models/cart_item.dart';
import 'package:food_delivery/utils/exports.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;
  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restorant>(
      builder: (context, restorant, child) {
        return Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: AppColors.secoundry(context),
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  cartItem.food.imgPath,
                  height: 150,
                  width: 100,
                ),
              ),
              Column(
                children: [
                  Text(cartItem.food.name),
                  Text(cartItem.food.price.toString()),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
