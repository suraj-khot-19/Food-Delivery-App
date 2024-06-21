import 'package:food_delivery/models/food_model.dart';

class Restorant {
//list of food menue
  final List<Food> _menue = [
    //misal
    Food(
      name: "Misal Pav",
      description:
          "Misal मिसळ, is a very popular spicy dish in the Western Indian state of Maharashtra. The dish is mostly eaten for breakfast or as a midday snacks or sometimes as a one-dish meal, often as part of misal pav. It remains a favourite snacks since it is easy to make with affordable ingredients and has a good nutritional value.",
      imgPath: "assets/misal/misal1.jpg",
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
      imgPath: "assets/burger/burger1.jpg",
      price: 150,
      foodCategory: FoodCategories.burger,
      availableFoodAddOn: [
        FoodAddon(name: "Extra Patty", price: 50),
        FoodAddon(name: "Bacon", price: 30),
        FoodAddon(name: "Cheese", price: 20),
        FoodAddon(name: "Avocado", price: 25),
      ],
    ),
    Food(
      name: "Chicken Burger",
      description:
          "The Chicken Burger includes a crispy fried chicken patty, lettuce, tomatoes, pickles, and mayonnaise, served on a soft brioche bun. It's a perfect choice for chicken lovers.",
      imgPath: "assets/burger/burger2.jpg",
      price: 130,
      foodCategory: FoodCategories.burger,
      availableFoodAddOn: [
        FoodAddon(name: "Extra Patty", price: 50),
        FoodAddon(name: "Bacon", price: 30),
        FoodAddon(name: "Cheese", price: 20),
        FoodAddon(name: "Spicy Sauce", price: 15),
      ],
    ),
    Food(
      name: "Veggie Burger",
      description:
          "The Veggie Burger is a delicious and healthy option, featuring a grilled veggie patty made from a blend of vegetables and legumes, topped with lettuce, tomatoes, pickles, onions, and a tangy herb sauce, served on a whole grain bun.",
      imgPath: "assets/burger/burger3.jpg",
      price: 120,
      foodCategory: FoodCategories.burger,
      availableFoodAddOn: [
        FoodAddon(name: "Extra Patty", price: 40),
        FoodAddon(name: "Cheese", price: 20),
        FoodAddon(name: "Avocado", price: 25),
        FoodAddon(name: "Grilled Mushrooms", price: 20),
      ],
    ),
    Food(
      name: "BBQ Bacon Burger",
      description:
          "The BBQ Bacon Burger is packed with flavor, featuring a beef patty topped with crispy bacon, cheddar cheese, BBQ sauce, fried onions, and lettuce, all served on a toasted sesame seed bun.",
      imgPath: "assets/burger/burger4.jpg",
      price: 160,
      foodCategory: FoodCategories.burger,
      availableFoodAddOn: [
        FoodAddon(name: "Extra Patty", price: 50),
        FoodAddon(name: "Extra Bacon", price: 30),
        FoodAddon(name: "Cheese", price: 20),
        FoodAddon(name: "Jalapenos", price: 15),
      ],
    ),
    Food(
      name: "Spicy Black Bean Burger",
      description:
          "The Spicy Black Bean Burger features a black bean patty with a spicy kick, topped with pepper jack cheese, lettuce, tomatoes, red onions, and a zesty chipotle mayo, served on a toasted bun.",
      imgPath: "assets/burger/burger5.jpg",
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
          "Puran Poli पुरण पोळी, is a traditional Marathi sweetss flatbread. It is made during festivals and special occasions. The filling, known as 'Puran', is made from chana dal and jaggery, while the outer covering is made from wheat flour. It is typically served with ghee or milk.",
      imgPath: "assets/puranPoli/pp1.webp",
      price: 100,
      foodCategory: FoodCategories.sweets,
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
      imgPath: "assets/vadaPav/vp1.webp",
      price: 50,
      foodCategory: FoodCategories.snacks,
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
      imgPath: "assets/shabudanakhichadi/s1.webp",
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
      imgPath: "assets/thalipit/tp1.webp",
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
      imgPath: "assets/pavBhaji/pb1.webp",
      price: 110,
      foodCategory: FoodCategories.snacks,
      availableFoodAddOn: [
        FoodAddon(name: "Extra Pav", price: 20),
        FoodAddon(name: "Butter", price: 10),
        FoodAddon(name: "Cheese", price: 30),
        FoodAddon(name: "Onion-Lemon", price: 5),
      ],
    ),

    //rice
    Food(
      name: "Chicken Biryani",
      description:
          "Chicken Biryani चिकन बिरयानी, is a flavorful and aromatic rice dish made with basmati rice, tender chicken pieces, spices, and herbs. It is often garnished with fried onions and served with raita or a side of yogurt.",
      imgPath: "assets/rice/rice1.webp",
      price: 180,
      foodCategory: FoodCategories.rice,
      availableFoodAddOn: [
        FoodAddon(name: "Extra Chicken", price: 50),
        FoodAddon(name: "Raita", price: 20),
        FoodAddon(name: "Boiled Egg", price: 15),
        FoodAddon(name: "salads", price: 10),
      ],
    ),
    Food(
      name: "Vegetable Pulao",
      description:
          "Vegetable Pulao वेजिटेबल पुलाव, is a colorful and healthy rice dish made with basmati rice and a variety of vegetables like carrots, peas, beans, and bell peppers, seasoned with aromatic spices and herbs.",
      imgPath: "assets/rice/rice2.webp",
      price: 150,
      foodCategory: FoodCategories.rice,
      availableFoodAddOn: [
        FoodAddon(name: "Raita", price: 20),
        FoodAddon(name: "Papad", price: 10),
        FoodAddon(name: "Pickle", price: 5),
      ],
    ),
    Food(
      name: "Jeera Rice",
      description:
          "Jeera Rice जीरा राइस, is a simple yet flavorful rice dish made with basmati rice and tempered with cumin seeds. It is a perfect accompaniment to a variety of Indian curries and gravies.",
      imgPath: "assets/rice/rice3.webp",
      price: 100,
      foodCategory: FoodCategories.rice,
      availableFoodAddOn: [
        FoodAddon(name: "Dal Tadka", price: 40),
        FoodAddon(name: "Papad", price: 10),
        FoodAddon(name: "Pickle", price: 5),
      ],
    ),
    Food(
      name: "Mutton Biryani",
      description:
          "Mutton Biryani मटन बिरयानी, is a rich and flavorful rice dish made with basmati rice, tender pieces of mutton, and a blend of spices and herbs. It is often garnished with fried onions and served with raita or a side of yogurt.",
      imgPath: "assets/rice/rice4.webp",
      price: 200,
      foodCategory: FoodCategories.rice,
      availableFoodAddOn: [
        FoodAddon(name: "Extra Mutton", price: 70),
        FoodAddon(name: "Raita", price: 20),
        FoodAddon(name: "Boiled Egg", price: 15),
        FoodAddon(name: "salads", price: 10),
      ],
    ),
    Food(
      name: "Fried Rice",
      description:
          "Fried Rice फ्राइड राइस, is a popular rice dish made with cooked rice stir-fried with vegetables, eggs, and soy sauce. It can be customized with different types of meat or seafood for added flavor.",
      imgPath: "assets/rice/rice5.jpg",
      price: 120,
      foodCategory: FoodCategories.rice,
      availableFoodAddOn: [
        FoodAddon(name: "Extra Egg", price: 15),
        FoodAddon(name: "Chicken", price: 40),
        FoodAddon(name: "Prawns", price: 50),
        FoodAddon(name: "Soy Sauce", price: 5),
      ],
    ),

    //salads
    Food(
      name: "Greek salads",
      description:
          "Greek salads is a fresh and flavorful salads made with cucumbers, tomatoes, red onions, Kalamata olives, and feta cheese, all tossed in a tangy lemon-oregano vinaigrette. It's a perfect side dish or light meal.",
      imgPath: "assets/salads/greek_salads.png",
      price: 120,
      foodCategory: FoodCategories.salads,
      availableFoodAddOn: [
        FoodAddon(name: "Extra Feta Cheese", price: 20),
        FoodAddon(name: "Grilled Chicken", price: 50),
        FoodAddon(name: "Avocado", price: 25),
        FoodAddon(name: "Pita Bread", price: 15),
      ],
    ),
    Food(
      name: "Caesar salads",
      description:
          "Caesar salads is a classic salads featuring romaine lettuce, croutons, and Parmesan cheese, all tossed in a creamy Caesar dressing. It's often topped with grilled chicken or shrimp for added protein.",
      imgPath: "assets/salads/caesar_salads.png",
      price: 130,
      foodCategory: FoodCategories.salads,
      availableFoodAddOn: [
        FoodAddon(name: "Grilled Chicken", price: 50),
        FoodAddon(name: "Grilled Shrimp", price: 70),
        FoodAddon(name: "Extra Parmesan", price: 20),
        FoodAddon(name: "Bacon Bits", price: 30),
      ],
    ),
    Food(
      name: "Caprese salads",
      description:
          "Caprese salads is a simple yet delicious salads made with fresh mozzarella, ripe tomatoes, and fresh basil leaves, drizzled with balsamic glaze and olive oil. It's a perfect appetizer or side dish.",
      imgPath: "assets/salads/caprese_salads.png",
      price: 110,
      foodCategory: FoodCategories.salads,
      availableFoodAddOn: [
        FoodAddon(name: "Extra Mozzarella", price: 30),
        FoodAddon(name: "Avocado", price: 25),
        FoodAddon(name: "Prosciutto", price: 50),
        FoodAddon(name: "Balsamic Glaze", price: 10),
      ],
    ),

    Food(
      name: "Quinoa salads",
      description:
          "Quinoa salads is a nutritious and hearty salads made with cooked quinoa, cherry tomatoes, cucumbers, red onions, and bell peppers, all tossed in a lemon vinaigrette. It's a great option for a healthy meal.",
      imgPath: "assets/salads/quinoa_salads.png",
      price: 140,
      foodCategory: FoodCategories.salads,
      availableFoodAddOn: [
        FoodAddon(name: "Grilled Chicken", price: 50),
        FoodAddon(name: "Feta Cheese", price: 20),
        FoodAddon(name: "Avocado", price: 25),
        FoodAddon(name: "Chickpeas", price: 15),
      ],
    ),

    Food(
      name: "Cobb salads",
      description:
          "Cobb salads is a hearty salads featuring a mix of greens, topped with grilled chicken, crispy bacon, hard-boiled eggs, avocado, tomatoes, and blue cheese, all served with a tangy vinaigrette.",
      imgPath: "assets/salads/cobb_salads.png",
      price: 150,
      foodCategory: FoodCategories.salads,
      availableFoodAddOn: [
        FoodAddon(name: "Extra Chicken", price: 50),
        FoodAddon(name: "Extra Bacon", price: 30),
        FoodAddon(name: "Blue Cheese", price: 20),
        FoodAddon(name: "Boiled Egg", price: 15),
      ],
    ),

//drinkss
    Food(
      name: "Mango Lassi",
      description:
          "Mango Lassi is a popular Indian yogurt-based drinks made with fresh mango pulp, yogurt, and a touch of sugar. It's a refreshing and creamy beverage, perfect for cooling down on a hot day.",
      imgPath: "assets/drinkss/mango_lassi.png",
      price: 60,
      foodCategory: FoodCategories.drinks,
      availableFoodAddOn: [
        FoodAddon(name: "Extra Mango Pulp", price: 20),
        FoodAddon(name: "Cardamom", price: 10),
        FoodAddon(name: "Chia Seeds", price: 15),
      ],
    ),
    Food(
      name: "Masala Chai",
      description:
          "Masala Chai is a traditional Indian spiced tea made with black tea, milk, and a blend of aromatic spices like cardamom, cinnamon, ginger, and cloves. It's a comforting and invigorating drinks.",
      imgPath: "assets/drinkss/masala_chai.png",
      price: 40,
      foodCategory: FoodCategories.drinks,
      availableFoodAddOn: [
        FoodAddon(name: "Extra Spices", price: 10),
        FoodAddon(name: "Honey", price: 10),
        FoodAddon(name: "Ginger", price: 5),
      ],
    ),
    Food(
      name: "Cold Coffee",
      description:
          "Cold Coffee is a chilled and creamy coffee beverage made with brewed coffee, milk, sugar, and ice, blended to perfection. It's an ideal drinks for coffee lovers on a warm day.",
      imgPath: "assets/drinkss/cold_coffee.png",
      price: 70,
      foodCategory: FoodCategories.drinks,
      availableFoodAddOn: [
        FoodAddon(name: "Whipped Cream", price: 15),
        FoodAddon(name: "Chocolate Syrup", price: 10),
        FoodAddon(name: "Ice Cream Scoop", price: 20),
      ],
    ),
    Food(
      name: "Lemonade",
      description:
          "Lemonade is a classic, refreshing drinks made with freshly squeezed lemon juice, water, and sugar. It's a perfect thirst quencher for hot summer days.",
      imgPath: "assets/drinkss/lemonade.png",
      price: 50,
      foodCategory: FoodCategories.drinks,
      availableFoodAddOn: [
        FoodAddon(name: "Mint Leaves", price: 5),
        FoodAddon(name: "Ginger", price: 5),
        FoodAddon(name: "Sparkling Water", price: 10),
      ],
    ),
    Food(
      name: "Iced Tea",
      description:
          "Iced Tea is a chilled tea beverage, often flavored with lemon or peach, and sweetsened to taste. It's a refreshing and light drinks, perfect for any time of the day.",
      imgPath: "assets/drinkss/iced_tea.png",
      price: 60,
      foodCategory: FoodCategories.drinks,
      availableFoodAddOn: [
        FoodAddon(name: "Lemon", price: 5),
        FoodAddon(name: "Peach Syrup", price: 10),
        FoodAddon(name: "Mint Leaves", price: 5),
      ],
    ),
  ];
}
