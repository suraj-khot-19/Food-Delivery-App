import 'package:food_delivery/utils/exports.dart';

class CartItem {
  Food food;
  List<FoodAddon> selectedAddon;
  int quantity;
  CartItem({
    required this.food,
    this.quantity = 1,
    required this.selectedAddon,
  });
  //total price
  double get totalPrice {
    double addonPrice =
        selectedAddon.fold(0, (sum, addon) => sum + addon.price);
    return (food.price + addonPrice) * quantity;
  }
}
