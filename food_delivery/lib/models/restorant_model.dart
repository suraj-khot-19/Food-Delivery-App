import 'package:food_delivery/models/food_model.dart';

class Restorant {
//list of food menue
  final List<Food> _menue = [
    //misal
    Food(
      name: "Misal Pav",
      description:
          "Misal मिसळ, is a very popular spicy dish in the Western Indian state of Maharashtra. The dish is mostly eaten for breakfast or as a midday snack or sometimes as a one-dish meal, often as part of misal pav. It remains a favourite snack since it is easy to make with affordable ingredients and has a good nutritional value.",
      imgPath: "assets/misal/misal.png",
      price: 120,
      foodCategory: FoodCategories.misal,
      availableFoodAddOn: [
        FoodAddon(name: "Cury", price: 30),
        FoodAddon(name: "Paav", price: 20),
        FoodAddon(name: "Farsan", price: 30),
        FoodAddon(name: "Onion-Lemon", price: 5),
      ],
    ),
    //burger
    Food(
      name: "Classic Beef Burger",
      description:
          "The Classic Beef Burger features a juicy beef patty, crisp lettuce, fresh tomatoes, pickles, and onions, topped with melted cheddar cheese and a special house sauce, all served on a toasted sesame seed bun.",
      imgPath: "assets/burger/classic_beef_burger.png",
      price: 150,
      foodCategory: FoodCategories.burger,
      availableFoodAddOn: [
        FoodAddon(name: "Extra Patty", price: 50),
        FoodAddon(name: "Bacon", price: 30),
        FoodAddon(name: "Cheese", price: 20),
        FoodAddon(name: "Avocado", price: 25),
      ],
    ),
    //burger
    Food(
      name: "Chicken Burger",
      description:
          "The Chicken Burger includes a crispy fried chicken patty, lettuce, tomatoes, pickles, and mayonnaise, served on a soft brioche bun. It's a perfect choice for chicken lovers.",
      imgPath: "assets/burger/chicken_burger.png",
      price: 130,
      foodCategory: FoodCategories.burger,
      availableFoodAddOn: [
        FoodAddon(name: "Extra Patty", price: 50),
        FoodAddon(name: "Bacon", price: 30),
        FoodAddon(name: "Cheese", price: 20),
        FoodAddon(name: "Spicy Sauce", price: 15),
      ],
    ),
    //burger
    Food(
      name: "Veggie Burger",
      description:
          "The Veggie Burger is a delicious and healthy option, featuring a grilled veggie patty made from a blend of vegetables and legumes, topped with lettuce, tomatoes, pickles, onions, and a tangy herb sauce, served on a whole grain bun.",
      imgPath: "assets/burger/veggie_burger.png",
      price: 120,
      foodCategory: FoodCategories.burger,
      availableFoodAddOn: [
        FoodAddon(name: "Extra Patty", price: 40),
        FoodAddon(name: "Cheese", price: 20),
        FoodAddon(name: "Avocado", price: 25),
        FoodAddon(name: "Grilled Mushrooms", price: 20),
      ],
    ),
    //burger
    Food(
      name: "BBQ Bacon Burger",
      description:
          "The BBQ Bacon Burger is packed with flavor, featuring a beef patty topped with crispy bacon, cheddar cheese, BBQ sauce, fried onions, and lettuce, all served on a toasted sesame seed bun.",
      imgPath: "assets/burger/bbq_bacon_burger.png",
      price: 160,
      foodCategory: FoodCategories.burger,
      availableFoodAddOn: [
        FoodAddon(name: "Extra Patty", price: 50),
        FoodAddon(name: "Extra Bacon", price: 30),
        FoodAddon(name: "Cheese", price: 20),
        FoodAddon(name: "Jalapenos", price: 15),
      ],
    ),
    //burger
    Food(
      name: "Spicy Black Bean Burger",
      description:
          "The Spicy Black Bean Burger features a black bean patty with a spicy kick, topped with pepper jack cheese, lettuce, tomatoes, red onions, and a zesty chipotle mayo, served on a toasted bun.",
      imgPath: "assets/burger/spicy_black_bean_burger.png",
      price: 130,
      foodCategory: FoodCategories.burger,
      availableFoodAddOn: [
        FoodAddon(name: "Extra Patty", price: 40),
        FoodAddon(name: "Cheese", price: 20),
        FoodAddon(name: "Avocado", price: 25),
        FoodAddon(name: "Spicy Sauce", price: 15),
      ],
    ),

    //puran poli
    Food(
      name: "Puran Poli",
      description:
          "Puran Poli पुरण पोळी, is a traditional Marathi sweet flatbread. It is made during festivals and special occasions. The filling, known as 'Puran', is made from chana dal and jaggery, while the outer covering is made from wheat flour. It is typically served with ghee or milk.",
      imgPath: "assets/puranpoli/puranpoli.png",
      price: 100,
      foodCategory: FoodCategories.sweet,
      availableFoodAddOn: [
        FoodAddon(name: "Ghee", price: 20),
        FoodAddon(name: "Milk", price: 10),
      ],
    ),
//"Vada Pav"
    Food(
      name: "Vada Pav",
      description:
          "Vada Pav वड़ा पाव, is often called the Indian burger. It consists of a spicy potato filling deep-fried in a chickpea flour batter, served in a pav (bread bun) with chutneys and fried green chilies. It's a popular street food in Maharashtra.",
      imgPath: "assets/vadapav/vadapav.png",
      price: 50,
      foodCategory: FoodCategories.snack,
      availableFoodAddOn: [
        FoodAddon(name: "Extra Vada", price: 30),
        FoodAddon(name: "Cheese", price: 20),
        FoodAddon(name: "Chutney", price: 10),
      ],
    ),
//"Sabudana Khichdi"
    Food(
      name: "Sabudana Khichdi",
      description:
          "Sabudana Khichdi साबुदाणा खिचड़ी, is a light, spiced dish made from soaked sabudana (tapioca pearls), peanuts, and potatoes. It is often consumed during fasting days. The dish is known for its unique texture and flavorful taste.",
      imgPath: "assets/sabudanakhichdi/sabudanakhichdi.png",
      price: 80,
      foodCategory: FoodCategories.breakfast,
      availableFoodAddOn: [
        FoodAddon(name: "Peanuts", price: 15),
        FoodAddon(name: "Yogurt", price: 10),
        FoodAddon(name: "Lemon", price: 5),
      ],
    ),
//  "Thalipeeth"
    Food(
      name: "Thalipeeth",
      description:
          "Thalipeeth थालीपीठ, is a multigrain pancake made from a mixture of different flours, spices, and vegetables. It is a healthy and filling dish often served with butter or yogurt. It is a staple in many Maharashtrian households.",
      imgPath: "assets/thalipeeth/thalipeeth.png",
      price: 90,
      foodCategory: FoodCategories.breakfast,
      availableFoodAddOn: [
        FoodAddon(name: "Butter", price: 10),
        FoodAddon(name: "Yogurt", price: 15),
        FoodAddon(name: "Pickle", price: 5),
      ],
    ),
// "Pav Bhaji"
    Food(
      name: "Pav Bhaji",
      description:
          "Pav Bhaji पाव भाजी, is a popular street food consisting of a spicy vegetable mash served with soft bread rolls. The bhaji (vegetable mash) is made with a variety of vegetables and flavored with a special blend of spices. It is often garnished with butter, chopped onions, and a squeeze of lemon.",
      imgPath: "assets/pavbhaji/pavbhaji.png",
      price: 110,
      foodCategory: FoodCategories.snack,
      availableFoodAddOn: [
        FoodAddon(name: "Extra Pav", price: 20),
        FoodAddon(name: "Butter", price: 10),
        FoodAddon(name: "Cheese", price: 30),
        FoodAddon(name: "Onion-Lemon", price: 5),
      ],
    ),
  ];
}
