// ignore_for_file: prefer_final_fields

import 'package:collection/collection.dart';
import 'package:food_delivery/models/cart_item.dart';
import 'package:food_delivery/utils/exports.dart';
import 'package:intl/intl.dart';

class Restorant extends ChangeNotifier {
  //delivery address initaily
  String _deliveryAddress = "kolhapur, Maharastra,416203";

//user cart
  final List<CartItem> _cart = [];

  ///card details
  List<CradDetails> _cardInfo = [];
//list of food menue
  final List<Food> _menue = [
    //misal
    Food(
      name: "Misal Pav",
      description:
          "Misal मिसळ, is a very popular spicy dish in the Western Indian state of Maharashtra. The dish is mostly eaten for breakfast or as a midday snacks or sometimes as a one-dish meal, often as part of misal pav. It remains a favourite snacks since it is easy to make with affordable ingredients and has a good nutritional value.",
      imgPath:
          "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/misal/misal1.jpg",
      price: 120,
      foodCategory: FoodCategories.misal,
      availableFoodAddOn: [
        FoodAddon(name: "Cury", price: 30),
        FoodAddon(name: "Paav", price: 20),
        FoodAddon(name: "Farsan", price: 30),
        FoodAddon(name: "Onion-Lemon", price: 5),
      ],
      foodImages: [
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/misal/misal1.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/misal/misal2.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/misal/misal3.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/misal/misal4.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/misal/misal5.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/misal/misal6.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/misal/misal7.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/misal/misal8.jpg",
      ],
    ),
    Food(
      name: "Special Misal Pav",
      description:
          "Misal मिसळ, is a very popular spicy dish in the Western Indian state of Maharashtra. The dish is mostly eaten for breakfast or as a midday snacks or sometimes as a one-dish meal, often as part of misal pav. It remains a favourite snacks since it is easy to make with affordable ingredients and has a good nutritional value.",
      imgPath:
          "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/misal/misal3.jpg",
      price: 120,
      foodCategory: FoodCategories.misal,
      availableFoodAddOn: [
        FoodAddon(name: "Cury", price: 30),
        FoodAddon(name: "Paav", price: 20),
        FoodAddon(name: "Farsan", price: 30),
        FoodAddon(name: "Onion-Lemon", price: 5),
      ],
      foodImages: [
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/misal/misal1.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/misal/misal2.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/misal/misal3.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/misal/misal4.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/misal/misal5.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/misal/misal6.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/misal/misal7.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/misal/misal8.jpg",
      ],
    ),
    Food(
      name: "Misal",
      description:
          "Misal मिसळ, is a very popular spicy dish in the Western Indian state of Maharashtra. The dish is mostly eaten for breakfast or as a midday snacks or sometimes as a one-dish meal, often as part of misal pav. It remains a favourite snacks since it is easy to make with affordable ingredients and has a good nutritional value.",
      imgPath:
          "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/misal/misal6.jpg",
      price: 120,
      foodCategory: FoodCategories.misal,
      availableFoodAddOn: [
        FoodAddon(name: "Cury", price: 30),
        FoodAddon(name: "Paav", price: 20),
        FoodAddon(name: "Farsan", price: 30),
        FoodAddon(name: "Onion-Lemon", price: 5),
      ],
      foodImages: [
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/misal/misal1.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/misal/misal2.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/misal/misal3.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/misal/misal4.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/misal/misal5.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/misal/misal6.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/misal/misal7.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/misal/misal8.jpg",
      ],
    ),

    //burger
    Food(
      name: "Classic Beef Burger",
      description:
          "The Classic Beef Burger features a juicy beef patty, crisp lettuce, fresh tomatoes, pickles, and onions, topped with melted cheddar cheese and a special house sauce, all served on a toasted sesame seed bun.",
      imgPath:
          "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger1.jpg",
      price: 150,
      foodCategory: FoodCategories.burger,
      availableFoodAddOn: [
        FoodAddon(name: "Extra Patty", price: 50),
        FoodAddon(name: "Bacon", price: 30),
        FoodAddon(name: "Cheese", price: 20),
        FoodAddon(name: "Avocado", price: 25),
      ],
      foodImages: [
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger1.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger2.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger3.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger4.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger5.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger6.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger7.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger8.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger9.jpg",
      ],
    ),
    Food(
      name: "Chicken Burger",
      description:
          "The Chicken Burger includes a crispy fried chicken patty, lettuce, tomatoes, pickles, and mayonnaise, served on a soft brioche bun. It's a perfect choice for chicken lovers.",
      imgPath:
          "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger2.jpg",
      price: 130,
      foodCategory: FoodCategories.burger,
      availableFoodAddOn: [
        FoodAddon(name: "Extra Patty", price: 50),
        FoodAddon(name: "Bacon", price: 30),
        FoodAddon(name: "Cheese", price: 20),
        FoodAddon(name: "Spicy Sauce", price: 15),
      ],
      foodImages: [
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger1.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger2.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger3.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger4.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger5.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger6.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger7.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger8.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger9.jpg",
      ],
    ),
    Food(
      name: "Veggie Burger",
      description:
          "The Veggie Burger is a delicious and healthy option, featuring a grilled veggie patty made from a blend of vegetables and legumes, topped with lettuce, tomatoes, pickles, onions, and a tangy herb sauce, served on a whole grain bun.",
      imgPath:
          "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger3.jpg",
      price: 120,
      foodCategory: FoodCategories.burger,
      availableFoodAddOn: [
        FoodAddon(name: "Extra Patty", price: 40),
        FoodAddon(name: "Cheese", price: 20),
        FoodAddon(name: "Avocado", price: 25),
        FoodAddon(name: "Grilled Mushrooms", price: 20),
      ],
      foodImages: [
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger1.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger2.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger3.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger4.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger5.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger6.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger7.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger8.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger9.jpg",
      ],
    ),
    Food(
      name: "BBQ Bacon Burger",
      description:
          "The BBQ Bacon Burger is packed with flavor, featuring a beef patty topped with crispy bacon, cheddar cheese, BBQ sauce, fried onions, and lettuce, all served on a toasted sesame seed bun.",
      imgPath:
          "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger4.jpg",
      price: 160,
      foodCategory: FoodCategories.burger,
      availableFoodAddOn: [
        FoodAddon(name: "Extra Patty", price: 50),
        FoodAddon(name: "Extra Bacon", price: 30),
        FoodAddon(name: "Cheese", price: 20),
        FoodAddon(name: "Jalapenos", price: 15),
      ],
      foodImages: [
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger1.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger2.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger3.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger4.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger5.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger6.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger7.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger8.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger9.jpg",
      ],
    ),
    Food(
      name: "Spicy Black Bean Burger",
      description:
          "The Spicy Black Bean Burger features a black bean patty with a spicy kick, topped with pepper jack cheese, lettuce, tomatoes, red onions, and a zesty chipotle mayo, served on a toasted bun.",
      imgPath:
          "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger5.jpg",
      price: 130,
      foodCategory: FoodCategories.burger,
      availableFoodAddOn: [
        FoodAddon(name: "Extra Patty", price: 40),
        FoodAddon(name: "Cheese", price: 20),
        FoodAddon(name: "Avocado", price: 25),
        FoodAddon(name: "Spicy Sauce", price: 15),
      ],
      foodImages: [
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger1.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger2.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger3.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger4.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger5.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger6.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger7.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger8.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/burger/burger9.jpg",
      ],
    ),

//"Vada Pav"
    Food(
      name: "Vada Pav",
      description:
          "Vada Pav वड़ा पाव, is often called the Indian burger. It consists of a spicy potato filling deep-fried in a chickpea flour batter, served in a pav (bread bun) with chutneys and fried green chilies. It's a popular street food in Maharashtra.",
      imgPath:
          "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/vadaPav/vp1.webp",
      price: 50,
      foodCategory: FoodCategories.snacks,
      availableFoodAddOn: [
        FoodAddon(name: "Extra Vada", price: 30),
        FoodAddon(name: "Cheese", price: 20),
        FoodAddon(name: "Chutney", price: 10),
      ],
      foodImages: [
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/vadaPav/vp1.webp",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/vadaPav/vp2.webp",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/vadaPav/vp3.webp",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/vadaPav/vp4.webp",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/vadaPav/vp5.webp",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/vadaPav/vp6.webp",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/vadaPav/vp7.webp",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/vadaPav/vp8.webp",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/vadaPav/vp9.webp",
      ],
    ),
    Food(
      name: "Vada Pav with Chutani",
      description:
          "Vada Pav वड़ा पाव, is often called the Indian burger. It consists of a spicy potato filling deep-fried in a chickpea flour batter, served in a pav (bread bun) with chutneys and fried green chilies. It's a popular street food in Maharashtra.",
      imgPath:
          "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/vadaPav/vp4.webp",
      price: 50,
      foodCategory: FoodCategories.snacks,
      availableFoodAddOn: [
        FoodAddon(name: "Extra Vada", price: 30),
        FoodAddon(name: "Cheese", price: 20),
        FoodAddon(name: "Chutney", price: 10),
      ],
      foodImages: [
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/vadaPav/vp1.webp",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/vadaPav/vp2.webp",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/vadaPav/vp3.webp",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/vadaPav/vp4.webp",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/vadaPav/vp5.webp",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/vadaPav/vp6.webp",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/vadaPav/vp7.webp",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/vadaPav/vp8.webp",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/vadaPav/vp9.webp",
      ],
    ),
    Food(
      name: "Bombay Vada",
      description:
          "Vada Pav वड़ा पाव, is often called the Indian burger. It consists of a spicy potato filling deep-fried in a chickpea flour batter, served in a pav (bread bun) with chutneys and fried green chilies. It's a popular street food in Maharashtra.",
      imgPath:
          "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/vadaPav/vp5.webp",
      price: 50,
      foodCategory: FoodCategories.snacks,
      availableFoodAddOn: [
        FoodAddon(name: "Extra Vada", price: 30),
        FoodAddon(name: "Cheese", price: 20),
        FoodAddon(name: "Chutney", price: 10),
      ],
      foodImages: [
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/vadaPav/vp1.webp",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/vadaPav/vp2.webp",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/vadaPav/vp3.webp",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/vadaPav/vp4.webp",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/vadaPav/vp5.webp",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/vadaPav/vp6.webp",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/vadaPav/vp7.webp",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/vadaPav/vp8.webp",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/vadaPav/vp9.webp",
      ],
    ),

// "Pav Bhaji"
    Food(
      name: "Pav Bhaji",
      description:
          "Pav Bhaji पाव भाजी, is a popular street food consisting of a spicy vegetable mash served with soft bread rolls. The bhaji (vegetable mash) is made with a variety of vegetables and flavored with a special blend of spices. It is often garnished with butter, chopped onions, and a squeeze of lemon.",
      imgPath:
          "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/paavBhaji/pb1.webp",
      price: 110,
      foodCategory: FoodCategories.snacks,
      availableFoodAddOn: [
        FoodAddon(name: "Extra Pav", price: 20),
        FoodAddon(name: "Butter", price: 10),
        FoodAddon(name: "Cheese", price: 30),
        FoodAddon(name: "Onion-Lemon", price: 5),
      ],
      foodImages: [
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/paavBhaji/pb1.webp",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/paavBhaji/pb2.webp",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/paavBhaji/pb3.webp",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/paavBhaji/pb4.webp",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/paavBhaji/pb5.webp",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/paavBhaji/pb6.webp",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/paavBhaji/pb7.webp",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/paavBhaji/pb8.webp",
      ],
    ),
    Food(
      name: "Pav Bhaji with Masala",
      description:
          "Pav Bhaji पाव भाजी, is a popular street food consisting of a spicy vegetable mash served with soft bread rolls. The bhaji (vegetable mash) is made with a variety of vegetables and flavored with a special blend of spices. It is often garnished with butter, chopped onions, and a squeeze of lemon.",
      imgPath:
          "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/paavBhaji/pb4.webp",
      price: 110,
      foodCategory: FoodCategories.snacks,
      availableFoodAddOn: [
        FoodAddon(name: "Extra Pav", price: 20),
        FoodAddon(name: "Butter", price: 10),
        FoodAddon(name: "Cheese", price: 30),
        FoodAddon(name: "Onion-Lemon", price: 5),
      ],
      foodImages: [
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/paavBhaji/pb1.webp",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/paavBhaji/pb2.webp",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/paavBhaji/pb3.webp",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/paavBhaji/pb4.webp",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/paavBhaji/pb5.webp",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/paavBhaji/pb6.webp",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/paavBhaji/pb7.webp",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/paavBhaji/pb8.webp",
      ],
    ),
    Food(
      name: "Tikhi Pav Bhaji",
      description:
          "Pav Bhaji पाव भाजी, is a popular street food consisting of a spicy vegetable mash served with soft bread rolls. The bhaji (vegetable mash) is made with a variety of vegetables and flavored with a special blend of spices. It is often garnished with butter, chopped onions, and a squeeze of lemon.",
      imgPath:
          "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/paavBhaji/pb6.webp",
      price: 110,
      foodCategory: FoodCategories.snacks,
      availableFoodAddOn: [
        FoodAddon(name: "Extra Pav", price: 20),
        FoodAddon(name: "Butter", price: 10),
        FoodAddon(name: "Cheese", price: 30),
        FoodAddon(name: "Onion-Lemon", price: 5),
      ],
      foodImages: [
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/paavBhaji/pb1.webp",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/paavBhaji/pb2.webp",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/paavBhaji/pb3.webp",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/paavBhaji/pb4.webp",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/paavBhaji/pb5.webp",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/paavBhaji/pb6.webp",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/paavBhaji/pb7.webp",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/paavBhaji/pb8.webp",
      ],
    ),

    //salads
    Food(
      name: "Greek salads",
      description:
          "Greek salads is a fresh and flavorful salads made with cucumbers, tomatoes, red onions, Kalamata olives, and feta cheese, all tossed in a tangy lemon-oregano vinaigrette. It's a perfect side dish or light meal.",
      imgPath:
          "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/salad/s1.jpeg",
      price: 120,
      foodCategory: FoodCategories.salads,
      availableFoodAddOn: [
        FoodAddon(name: "Extra Feta Cheese", price: 20),
        FoodAddon(name: "Grilled Chicken", price: 50),
        FoodAddon(name: "Avocado", price: 25),
        FoodAddon(name: "Pita Bread", price: 15),
      ],
      foodImages: [
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/salad/s1.jpeg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/salad/s2.jpeg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/salad/s3.jpeg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/salad/s4.jpeg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/salad/s5.jpeg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/salad/s6.jpeg",
      ],
    ),
    Food(
      name: "Caesar salads",
      description:
          "Caesar salads is a classic salads featuring romaine lettuce, croutons, and Parmesan cheese, all tossed in a creamy Caesar dressing. It's often topped with grilled chicken or shrimp for added protein.",
      imgPath:
          "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/salad/s2.jpeg",
      price: 130,
      foodCategory: FoodCategories.salads,
      availableFoodAddOn: [
        FoodAddon(name: "Grilled Chicken", price: 50),
        FoodAddon(name: "Grilled Shrimp", price: 70),
        FoodAddon(name: "Extra Parmesan", price: 20),
        FoodAddon(name: "Bacon Bits", price: 30),
      ],
      foodImages: [
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/salad/s1.jpeg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/salad/s2.jpeg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/salad/s3.jpeg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/salad/s4.jpeg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/salad/s5.jpeg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/salad/s6.jpeg",
      ],
    ),
    Food(
      name: "Caprese salads",
      description:
          "Caprese salads is a simple yet delicious salads made with fresh mozzarella, ripe tomatoes, and fresh basil leaves, drizzled with balsamic glaze and olive oil. It's a perfect appetizer or side dish.",
      imgPath:
          "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/salad/s3.jpeg",
      price: 110,
      foodCategory: FoodCategories.salads,
      availableFoodAddOn: [
        FoodAddon(name: "Extra Mozzarella", price: 30),
        FoodAddon(name: "Avocado", price: 25),
        FoodAddon(name: "Prosciutto", price: 50),
        FoodAddon(name: "Balsamic Glaze", price: 10),
      ],
      foodImages: [
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/salad/s1.jpeg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/salad/s2.jpeg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/salad/s3.jpeg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/salad/s4.jpeg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/salad/s5.jpeg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/salad/s6.jpeg",
      ],
    ),
    Food(
      name: "Quinoa salads",
      description:
          "Quinoa salads is a nutritious and hearty salads made with cooked quinoa, cherry tomatoes, cucumbers, red onions, and bell peppers, all tossed in a lemon vinaigrette. It's a great option for a healthy meal.",
      imgPath:
          "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/salad/s4.jpeg",
      price: 140,
      foodCategory: FoodCategories.salads,
      availableFoodAddOn: [
        FoodAddon(name: "Grilled Chicken", price: 50),
        FoodAddon(name: "Feta Cheese", price: 20),
        FoodAddon(name: "Avocado", price: 25),
        FoodAddon(name: "Chickpeas", price: 15),
      ],
      foodImages: [
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/salad/s1.jpeg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/salad/s2.jpeg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/salad/s3.jpeg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/salad/s4.jpeg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/salad/s5.jpeg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/salad/s6.jpeg",
      ],
    ),
    Food(
      name: "Cobb salads",
      description:
          "Cobb salads is a hearty salads featuring a mix of greens, topped with grilled chicken, crispy bacon, hard-boiled eggs, avocado, tomatoes, and blue cheese, all served with a tangy vinaigrette.",
      imgPath:
          "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/salad/s5.jpeg",
      price: 150,
      foodCategory: FoodCategories.salads,
      availableFoodAddOn: [
        FoodAddon(name: "Extra Chicken", price: 50),
        FoodAddon(name: "Extra Bacon", price: 30),
        FoodAddon(name: "Blue Cheese", price: 20),
        FoodAddon(name: "Boiled Egg", price: 15),
      ],
      foodImages: [
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/salad/s1.jpeg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/salad/s2.jpeg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/salad/s3.jpeg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/salad/s4.jpeg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/salad/s5.jpeg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/salad/s6.jpeg",
      ],
    ),

//drinkss
    Food(
      name: " Healthy and Tasty Gulacha Chaha",
      description:
          "Healthy and Tasty Gulacha Chaha. Gulacha chaha is a very easy and simple recipe. The main problem while making gulacha chaha is the milk gets spoilt. You will get few tips",
      imgPath:
          "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/drinks/d1.jpg",
      price: 60,
      foodCategory: FoodCategories.drinks,
      availableFoodAddOn: [
        FoodAddon(name: "Extra Mango Pulp", price: 20),
        FoodAddon(name: "Cardamom", price: 10),
        FoodAddon(name: "Chia Seeds", price: 15),
      ],
      foodImages: [
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/drinks/d1.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/drinks/d2.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/drinks/d3.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/drinks/d4.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/drinks/d5.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/drinks/d6.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/drinks/d7.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/drinks/d8.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/drinks/d9.jpg",
      ],
    ),
    Food(
      name: "Masala Chai",
      description:
          "Masala Chai is a traditional Indian spiced tea made with black tea, milk, and a blend of aromatic spices like cardamom, cinnamon, ginger, and cloves. It's a comforting and invigorating drinks.",
      imgPath:
          "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/drinks/d2.jpg",
      price: 40,
      foodCategory: FoodCategories.drinks,
      availableFoodAddOn: [
        FoodAddon(name: "Extra Spices", price: 10),
        FoodAddon(name: "Honey", price: 10),
        FoodAddon(name: "Ginger", price: 5),
      ],
      foodImages: [
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/drinks/d1.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/drinks/d2.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/drinks/d3.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/drinks/d4.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/drinks/d5.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/drinks/d6.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/drinks/d7.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/drinks/d8.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/drinks/d9.jpg",
      ],
    ),
    Food(
      name: "Cold Coffee",
      description:
          "Cold Coffee is a chilled and creamy coffee beverage made with brewed coffee, milk, sugar, and ice, blended to perfection. It's an ideal drinks for coffee lovers on a warm day.",
      imgPath:
          "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/drinks/d3.jpg",
      price: 70,
      foodCategory: FoodCategories.drinks,
      availableFoodAddOn: [
        FoodAddon(name: "Whipped Cream", price: 15),
        FoodAddon(name: "Chocolate Syrup", price: 10),
        FoodAddon(name: "Ice Cream Scoop", price: 20),
      ],
      foodImages: [
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/drinks/d1.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/drinks/d2.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/drinks/d3.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/drinks/d4.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/drinks/d5.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/drinks/d6.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/drinks/d7.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/drinks/d8.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/drinks/d9.jpg",
      ],
    ),
    Food(
      name: "Lemonade",
      description:
          "Lemonade is a classic, refreshing drinks made with freshly squeezed lemon juice, water, and sugar. It's a perfect thirst quencher for hot summer days.",
      imgPath:
          "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/drinks/d9.jpg",
      price: 50,
      foodCategory: FoodCategories.drinks,
      availableFoodAddOn: [
        FoodAddon(name: "Mint Leaves", price: 5),
        FoodAddon(name: "Ginger", price: 5),
        FoodAddon(name: "Sparkling Water", price: 10),
      ],
      foodImages: [
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/drinks/d1.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/drinks/d2.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/drinks/d3.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/drinks/d5.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/drinks/d6.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/drinks/d7.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/drinks/d8.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/drinks/d9.jpg",
      ],
    ),
    Food(
      name: "Iced Tea",
      description:
          "Iced Tea is a chilled tea beverage, often flavored with lemon or peach, and sweetsened to taste. It's a refreshing and light drinks, perfect for any time of the day.",
      imgPath:
          "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/drinks/d5.jpg",
      price: 60,
      foodCategory: FoodCategories.drinks,
      availableFoodAddOn: [
        FoodAddon(name: "Lemon", price: 5),
        FoodAddon(name: "Peach Syrup", price: 10),
        FoodAddon(name: "Mint Leaves", price: 5),
      ],
      foodImages: [
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/drinks/d1.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/drinks/d2.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/drinks/d3.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/drinks/d4.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/drinks/d5.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/drinks/d6.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/drinks/d7.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/drinks/d8.jpg",
        "https://raw.githubusercontent.com/suraj-khot-19/img/main/food-delivery/drinks/d9.jpg",
      ],
    ),
  ];

  //getter
  List<Food> get menue => _menue;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;
  List<CradDetails> get cardInfo => _cardInfo;
  //******************   operations ***************************

//1. add to cart
  void addToCart(Food food, List<FoodAddon> selectedAddons) {
    //cart alredy with same food
    CartItem? cartItem = _cart.firstWhereOrNull((items) {
      //checking if samee food
      bool isSameFood = items.food == food;
      //checking if same adddons
      bool isSameAddon =
          const ListEquality().equals(items.selectedAddon, selectedAddons);
      return isSameAddon && isSameFood;
    });
    //if item alredy exist=>just increase quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }
    //else add new item to the cart
    else {
      _cart.add(CartItem(food: food, selectedAddon: selectedAddons));
    }
    notifyListeners();
  }

//2. remove from
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);
    //checking never negative
    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else
      //if 1 remove from cart
      {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

//3. get total price
  double totalPrice() {
    double total = 0.0;
    for (CartItem cartItem in _cart) {
      //item total
      double itemTotal = cartItem.food.price;
      //checking addons
      for (FoodAddon foodAddon in cartItem.selectedAddon) {
        itemTotal += foodAddon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

//4. get total numbers of items in cart
  int getTotalItemCount() {
    int itemCount = 0;
    for (CartItem cartItem in cart) {
      itemCount += cartItem.quantity;
    }
    return itemCount;
  }

//5. clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

//6. update address
  void updateAddress(String address) {
    _deliveryAddress = address;
    notifyListeners();
  }

  //adding card details
  void addCardInfo(String cardNumber, String expiryDate, String cardHolderName,
      String cvvCode) {
    _cardInfo.add(CradDetails(
        cardNumber: cardNumber,
        expiryDate: expiryDate,
        cardHolderName: cardHolderName,
        cvvCode: cvvCode));
    notifyListeners();
  }

  //helpers
//geneerate receipt
  String receipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here is Your Receipt");
    receipt.writeln();

    //formating data
    String formatdate =
        DateFormat('dd/MM/yyyy HH:mm:ss').format(DateTime.now());
    receipt.writeln(formatdate);
    receipt.writeln();
    receipt.writeln("____________");
    receipt.writeln();

    for (int i = 0; i < cart.length; i++) {
      //adding detals
      receipt.writeln(
          "${i + 1}) ${cart[i].quantity} X ${cart[i].food.name} - ${formatMoney(cart[i].food.price)}");

      //adding addons
      if (cart[i].selectedAddon.isNotEmpty) {
        receipt.writeln("Add-ons: ${formatingAddons(cart[i].selectedAddon)}");
        receipt.writeln();
      }
    }
    receipt.writeln();
    receipt.writeln("______________");
    receipt.writeln("");
    //items price
    receipt.writeln("Total Items : ${getTotalItemCount()}");
    receipt.writeln("Total Price : ${formatMoney(totalPrice())}");
    //adding address
    receipt.writeln();
    receipt.writeln("Delivery address:$deliveryAddress");
    //adding card
    receipt.writeln();
    for (CradDetails value in cardInfo) {
      receipt.writeln("Name : " + value.cardHolderName);
      receipt.writeln("Number : " + value.cardNumber);
      receipt.writeln("Expiry : " + value.expiryDate);
      receipt.writeln("CVV : " + value.cvvCode);
    }
    return receipt.toString();
  }

//format doubke value into money
  String formatMoney(double price) {
    return NumberFormat.currency(locale: 'en_IN', symbol: '₹').format(price);
  }

//format list of add on into string summery
  String formatingAddons(List<FoodAddon> addon) {
    return addon
        .map((addon) => "${addon.name} (${formatMoney(addon.price)})")
        .join(", ");
  }
}
