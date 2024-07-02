import 'package:firebase_core/firebase_core.dart';
import 'package:food_delivery/firebase_options.dart';
import 'package:food_delivery/auth/check_login_logout.dart';
import 'package:food_delivery/utils/exports.dart';

//making async app
void main() async {
  //initaliziing app
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  //runapp
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
      home: const CheckLoginLogout(),
      //accessing theme provider
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
