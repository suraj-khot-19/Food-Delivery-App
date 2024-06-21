import 'package:food_delivery/utils/exports.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
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
