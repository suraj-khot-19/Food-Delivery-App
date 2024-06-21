import 'package:food_delivery/utils/exports.dart';

class MySliverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;
  const MySliverAppBar({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 340,
      title: const Text("S Dinner"),
      floating: false,
      pinned: true,
      actions: [
        // cart butn
        IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
      ],
      backgroundColor: AppColors.surface(context),
      foregroundColor: AppColors.inversePrimary(context),
      flexibleSpace: FlexibleSpaceBar(
        title: title,
        centerTitle: true,
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: child,
        ),
        titlePadding: const EdgeInsets.only(left: 0, top: 0, bottom: 0),
        expandedTitleScale: 1,
      ),
    );
  }
}