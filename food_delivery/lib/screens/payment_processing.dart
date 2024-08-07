import 'package:food_delivery/database/firestore_db.dart';
import 'package:food_delivery/utils/exports.dart';
import 'package:food_delivery/widgets/my_receipt.dart';

class PaymentProcessing extends StatefulWidget {
  const PaymentProcessing({super.key});

  @override
  State<PaymentProcessing> createState() => _PaymentProcessingState();
}

class _PaymentProcessingState extends State<PaymentProcessing> {
  //instance of db
  FirestoreDb firestoreDb = FirestoreDb();
  //add receipt to db when user come to pay
  @override
  void initState() {
    super.initState();
    String address = context.read<Restorant>().deliveryAddress;
    String receipt = context.read<Restorant>().receipt();

    List<CradDetails> cardInfo = context.read<Restorant>().cardInfo;
    firestoreDb.saveOrdersToDb(receipt, address, cardInfo);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.surface(context),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: Consumer<Restorant>(
          builder: (context, value, child) {
            value.cart.clear();
            return IconButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                    builder: (context) {
                      return HomeScreen();
                    },
                  ), (Route<dynamic> route) => false);
                },
                icon: Icon(Icons.arrow_back_ios_new));
          },
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AddVerticleSpace(height: 20),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: MyReceipt(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottom(context),
    );
  }

//bottom nav
  Widget bottom(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: AppColors.secoundry(context),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(Icons.person_outline),
          Padding(
            padding: const EdgeInsets.only(left: 5, top: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Suraj Khot",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary(context),
                  ),
                ),
                Text(
                  "Driver",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary(context),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Row(
            children: [
              InkWell(
                onTap: () {},
                child: Icon(
                  Icons.message_outlined,
                  color: AppColors.primary(context),
                ),
              ),
              const AddHorizontalSpace(width: 8),
              InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.call_outlined,
                  color: Colors.green,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
