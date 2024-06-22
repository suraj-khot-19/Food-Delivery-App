import 'package:food_delivery/screens/food_description.dart';
import 'package:food_delivery/utils/exports.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  //for tab
  late TabController tabController;
  @override
  void initState() {
    //passsing food category lenght
    tabController =
        TabController(length: FoodCategories.values.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

//showing food items
//filter
  List<Food> filterItemsOfeach(FoodCategories categorys, List<Food> foodmenue) {
    return foodmenue.where((food) => food.foodCategory == categorys).toList();
  }

//return list
  List<Widget> getFood(List<Food> foodMenue) {
    return FoodCategories.values.map((category) {
      List<Food> categoryMenue = filterItemsOfeach(category, foodMenue);
      return ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
        itemCount: categoryMenue.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return MyFoodTile(
            food: categoryMenue[index],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      FoodDescription(food: categoryMenue[index]),
                ),
              );
            },
          );
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const HomeDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBar(
            //tabs
            title: MyTabBar(tabController: tabController),
            //box
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: AppColors.secoundry(context),
                ),
                //address
                const MyCurrentAddress(),
                //descrption box
                const MyDescription(),
              ],
            ),
          ),
        ],
        body: Consumer<Restorant>(
          builder: (context, restorent, child) => TabBarView(
            controller: tabController,
            children: getFood(restorent.menue),
          ),
        ),
      ),
    );
  }
}
