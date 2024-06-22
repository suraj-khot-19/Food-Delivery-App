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
          ),
          body: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: userCart.length,
                itemBuilder: (context, index) {
                  return MyCartTile(
                    cartItem: userCart[index],
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
