import 'package:food_delivery/utils/exports.dart';
import 'package:food_delivery/widgets/my_cart_tile.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Restorant>(
      builder: (context, restorant, child) {
        //final user cart
        final userCart = restorant.cart;

        //ui
        return Scaffold(
          // backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: const Text("Cart"),
            backgroundColor: Colors.transparent,
            actions: [
              IconButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: const Text("Do you want to clear cart"),
                            actions: [
                              ElevatedButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text("Cancel"),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  restorant.clearCart();
                                },
                                child: const Text("Yes"),
                              ),
                            ],
                          );
                        });
                  },
                  icon: const Icon(Icons.delete_forever_outlined))
            ],
          ),
          body: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      //if empty
                      child: userCart.isEmpty
                          ? const Center(
                              child: Text("Cart is empty..."),
                            )
                          //if have food
                          : ListView.builder(
                              itemCount: userCart.length,
                              itemBuilder: (context, index) {
                                return MyCartTile(
                                  cartItem: userCart[index],
                                );
                              },
                            ),
                    ),
                  ],
                ),
              ),
              CustomButton(
                label: "Go to checkout",
                onTap: () {},
              ),
              const AddVerticleSpace(height: 25),
            ],
          ),
        );
      },
    );
  }
}
