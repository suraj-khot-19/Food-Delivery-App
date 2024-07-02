//food model
class Food {
  final String name;
  final String description;
  final String imgPath;
  final FoodCategories foodCategory;
  List<String> foodImages;
  List<FoodAddon> availableFoodAddOn;
  final double price;
  Food({
    required this.name,
    required this.description,
    required this.imgPath,
    required this.price,
    required this.foodCategory,
    required this.availableFoodAddOn,
    required this.foodImages,
  });
}

//food categories
enum FoodCategories {
  misal,
  burger,
  salads,
  drinks,
  snacks,
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

//card details
class CradDetails {
  String cardNumber;
  String expiryDate;
  String cardHolderName;
  String cvvCode;
  CradDetails({
    required this.cardNumber,
    required this.expiryDate,
    required this.cardHolderName,
    required this.cvvCode,
  });
  Map<String, dynamic> toMap() {
    return {
      'card holder name': cardHolderName,
      'card number': cardNumber,
      'expiry date': expiryDate,
      'cvv code': cvvCode,
    };
  }
}
