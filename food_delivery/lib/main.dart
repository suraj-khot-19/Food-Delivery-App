import 'package:food_delivery/utils/exports.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      //theme
      ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
      ),
      //restorent
      ChangeNotifierProvider(
        create: (context) => Restorant(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery',
      home: const LoginScreen(),
      //accessing theme provider
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
