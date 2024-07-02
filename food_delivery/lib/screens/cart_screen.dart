import 'package:food_delivery/screens/payment_screen.dart';
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
          backgroundColor: AppColors.surface(context),
          appBar: AppBar(
            title: const Text("Cart"),
            backgroundColor: Colors.transparent,
            actions: [
              IconButton(
                onPressed: () {
                  if (userCart.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: AppColors.ternary(context),
                        content: Text(
                          "Your Cart Is empty, Buy A product too place an order",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColors.inversePrimary(context),
                          ),
                        ),
                      ),
                    );
                  } else {
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
                                restorant.clearCart();
                                Navigator.pop(context);
                              },
                              child: const Text("Yes"),
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                icon: const Icon(
                  Icons.delete_forever_outlined,
                ),
              ),
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
                label:
                    "Proceed to Buy ${restorant.formatMoney(restorant.totalPrice())}",
                onTap: () {
                  if (userCart.isNotEmpty) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PaymentScreen(),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        elevation: 3,
                        backgroundColor: AppColors.ternary(context),
                        content: Text(
                          "Your Cart Is empty.",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColors.inversePrimary(context),
                          ),
                        ),
                      ),
                    );
                  }
                },
              ),
              const AddVerticleSpace(height: 25),
            ],
          ),
        );
      },
    );
  }
}
