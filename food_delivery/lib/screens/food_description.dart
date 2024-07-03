import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:food_delivery/utils/exports.dart';

class FoodDescription extends StatefulWidget {
  final Food food;
  final Map<FoodAddon, bool> selectedAddons = {};

  FoodDescription({
    super.key,
    required this.food,
  }) {
    //initaily put addons to be false
    for (FoodAddon foodAddon in food.availableFoodAddOn) {
      selectedAddons[foodAddon] = false;
    }
  }

  @override
  State<FoodDescription> createState() => _FoodDescriptionState();
}

class _FoodDescriptionState extends State<FoodDescription> {
//add to cart method
  void addToCart(Food food, Map<FoodAddon, bool> selectedAddons) {
//close
    Navigator.pop(context);

    //logic for formating selected addons
    List<FoodAddon> currentlySelectedAddon = [];
    for (FoodAddon foodAddon in widget.food.availableFoodAddOn) {
      if (widget.selectedAddons[foodAddon] == true) {
        currentlySelectedAddon.add(foodAddon);
      }
    }
    //add to cart
    context.read<Restorant>().addToCart(food, currentlySelectedAddon);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //scaffold
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                //crousal
                CarouselSlider(
                  items: widget.food.foodImages
                      .map(
                        (images) => Builder(
                          builder: (context) {
                            return CachedNetworkImage(
                              imageUrl: images,
                              width: double.infinity,
                              fit: BoxFit.cover,
                              //placeholder
                              placeholder: (context, url) {
                                return Container(
                                  child: Center(
                                    child: CircularProgressIndicator(
                                      color: AppColors.primary(context),
                                    ),
                                  ),
                                );
                              },
                              //error
                              errorWidget: (context, url, error) {
                                return Container(
                                  child:
                                      Center(child: Icon(Icons.error_outline)),
                                );
                              },
                            );
                          },
                        ),
                      )
                      .toList(),
                  options: CarouselOptions(
                    height: 600,
                    viewportFraction: 1,
                    autoPlay: true,
                  ),
                ),
                //discripitoon
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.food.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: AppColors.inversePrimary(context),
                        ),
                      ),
                      const AddVerticleSpace(height: 5),
                      Text(
                        widget.food.price.toString(),
                        style: TextStyle(
                          color: AppColors.primary(context),
                          fontSize: 16,
                        ),
                      ),
                      const AddVerticleSpace(height: 15),
                      Text(
                        widget.food.description,
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.primary(context),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Divider(
                          color: AppColors.secoundry(context),
                          indent: 25,
                          endIndent: 25,
                        ),
                      ),
                      Text(
                        "Add-Ons",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.inversePrimary(context),
                          fontSize: 16,
                        ),
                      ),
                      const AddVerticleSpace(height: 10),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: AppColors.secoundry(
                              context,
                            ),
                          ),
                        ),
                        child: ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: widget.food.availableFoodAddOn.length,
                          itemBuilder: (context, index) {
                            FoodAddon specificFoodAddon =
                                widget.food.availableFoodAddOn[index];
                            //checkk box
                            return CheckboxListTile(
                              activeColor: Colors.cyan,
                              checkColor: Colors.yellow,
                              //passing from selectedAddons
                              value: widget.selectedAddons[specificFoodAddon],
                              //update selectedAddons
                              onChanged: (bool? value) {
                                setState(() {
                                  widget.selectedAddons[specificFoodAddon] =
                                      value ?? false;
                                });
                              },
                              title: Text(
                                widget.food.availableFoodAddOn[index].name,
                              ),
                              subtitle: Text(
                                widget.food.availableFoodAddOn[index].price
                                    .toString(),
                                style: TextStyle(
                                    color: AppColors.primary(context)),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                CustomButton(
                  label: "Add To Cart",
                  onTap: () => addToCart(widget.food, widget.selectedAddons),
                ),
                const AddVerticleSpace(height: 50),
              ],
            ),
          ),
        ),
        //back button
        SafeArea(
          child: Container(
            margin: const EdgeInsets.only(left: 25),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.primary(context).withOpacity(0.6),
            ),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_new_rounded),
            ),
          ),
        ),
      ],
    );
  }
}
