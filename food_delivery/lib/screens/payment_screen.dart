import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:food_delivery/screens/payment_processing.dart';
import 'package:food_delivery/utils/exports.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  GlobalKey<FormState> key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.surface(context),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Payment"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CreditCardWidget(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              showBackView: false,
              isChipVisible: true,
              isHolderNameVisible: true,
              onCreditCardWidgetChange: (value) {},
              animationDuration: Durations.long1,
              isSwipeGestureEnabled: true,
              cardBgColor: Color.fromARGB(255, 15, 93, 87),
              enableFloatingCard: true,
              cardType: CardType.rupay,
              floatingConfig:
                  FloatingConfig(isGlareEnabled: true, isShadowEnabled: true),
            ),
            CreditCardForm(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              onCreditCardModelChange: (value) {
                setState(() {
                  cardNumber = value.cardNumber;
                  expiryDate = value.expiryDate;
                  cardHolderName = value.cardHolderName;
                  cvvCode = value.cvvCode;
                });
              },
              formKey: key,
            ),
            const AddVerticleSpace(height: 210),
            CustomButton(
              label: "Pay",
              onTap: () {
                if (key.currentState!.validate()) {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text("Confirm Payment"),
                        content: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Card Number : $cardNumber"),
                                Text("Expiry Date : $expiryDate"),
                                Text("Card Holder Name : $cardHolderName"),
                                Text("CV Code : $cvvCode"),
                              ],
                            ),
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("Cancel"),
                          ),
                          Consumer<Restorant>(
                            builder: (context, restorant, child) {
                              return TextButton(
                                onPressed: () {
                                  restorant.cardInfo.add(
                                    CradDetails(
                                      cardNumber: cardNumber,
                                      expiryDate: expiryDate,
                                      cardHolderName: cardHolderName,
                                      cvvCode: cvvCode,
                                    ),
                                  );
                                  Navigator.pop(context);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return const PaymentProcessing();
                                      },
                                    ),
                                  );
                                },
                                child: const Text("Pay"),
                              );
                            },
                          ),
                        ],
                      );
                    },
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
