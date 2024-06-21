//food model
class Food {
  final String name;
  final String description;
  final String imgPath;
  final FoodCategories foodCategory;
  List<FoodAddon> availableFoodAddOn;
  final double price;
  Food({
    required this.name,
    required this.description,
    required this.imgPath,
    required this.price,
    required this.foodCategory,
    required this.availableFoodAddOn,
  });
}

//food categories
enum FoodCategories {
  misal,
  burger,
  salads,
  drinks,
  snacks,
  breakfast,
  sweets,
  rice,
}

//food add-on

class FoodAddon {
  String name;
  double price;
  FoodAddon({
    required this.name,
    required this.price,
  });
}
