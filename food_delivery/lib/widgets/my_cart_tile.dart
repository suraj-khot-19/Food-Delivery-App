import 'package:food_delivery/models/cart_item.dart';
import 'package:food_delivery/screens/food_description.dart';
import 'package:food_delivery/utils/exports.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;
  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restorant>(
      builder: (context, restorant, child) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: AppColors.secoundry(context),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  //image
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              FoodDescription(food: cartItem.food),
                        ),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        cartItem.food.imgPath,
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const AddHorizontalSpace(width: 10),
                  //name
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          cartItem.food.name,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text("${cartItem.food.price} Rs"),
                      ],
                    ),
                  ),
                  const Spacer(),
                  //icrement decrement
                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.ternary(context),
                        borderRadius: BorderRadius.circular(8)),
                    padding: const EdgeInsets.only(top: 8, bottom: 8, right: 8),
                    margin: const EdgeInsets.only(right: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        //decrease
                        InkWell(
                          onTap: () {
                            restorant.removeFromCart(cartItem);
                          },
                          child: Icon(
                            cartItem.quantity == 1
                                ? Icons.delete_outline
                                : Icons.remove,
                            size: 24,
                          ),
                        ),
                        //quantity
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: SizedBox(
                            width: 20,
                            child: Center(
                              child: Text(
                                cartItem.quantity.toString(),
                              ),
                            ),
                          ),
                        ),
                        //increase
                        InkWell(
                          onTap: () {
                            restorant.addToCart(
                              cartItem.food,
                              cartItem.selectedAddon,
                            );
                          },
                          child: const Icon(
                            Icons.add,
                            size: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const AddVerticleSpace(height: 10),
              //addons in list
              SizedBox(
                height: cartItem.selectedAddon.isEmpty ? 0 : 60,
                child: ListView.builder(
                  itemCount: cartItem.selectedAddon.length,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: FilterChip(
                        label: Row(
                          children: [
                            Text(cartItem.selectedAddon[index].name),
                            Text(
                                "(${restorant.formatMoney(cartItem.selectedAddon[index].price)})"),
                          ],
                        ),
                        onSelected: (value) {},
                        labelStyle: TextStyle(
                          fontSize: 12,
                          color: AppColors.inversePrimary(context),
                        ),
                        backgroundColor: AppColors.secoundry(context),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
