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
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
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
        body: TabBarView(
          children: [
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return const Text("1");
              },
            ),
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return const Text("2");
              },
            ),
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return const Text("3");
              },
            ),
          ],
        ),
      ),
    );
  }
}
