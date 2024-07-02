// ignore_for_file: use_build_context_synchronously

import 'package:food_delivery/auth/auth_service.dart';
import 'package:food_delivery/utils/exports.dart';
import 'package:food_delivery/widgets/showing_snack_bar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
//controllers
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  final key = GlobalKey<FormState>();
  bool isLoading = false;
//login method
  void login() async {
//instance of authservice
    AuthService authService = AuthService();
    try {
      setState(() {
        isLoading = true;
      });
      await authService.signIn(emailController.text, passwordController.text);
      //nav to home
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const HomeScreen();
          },
        ),
      );
    } catch (e) {
      ShowingSnackBar().showingSnackBar(
        context,
        e.toString(),
      );
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.surface(context),
      body: Center(
        child: Form(
          key: key,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                size: 100,
                Icons.lock_open_rounded,
                color: AppColors.inversePrimary(context),
              ),
              const AddVerticleSpace(height: 25),
              Text(
                "Food Delivery App",
                style: TextStyle(
                  color: AppColors.inversePrimary(context),
                  fontSize: 16,
                ),
              ),
              const AddVerticleSpace(height: 25),
              CustomTextFeild(
                controller: emailController,
                hintText: "Email",
                obsecureText: false,
              ),
              const AddVerticleSpace(height: 10),
              CustomTextFeild(
                controller: passwordController,
                hintText: "Password",
                obsecureText: true,
              ),
              const AddVerticleSpace(height: 25),
              CustomButton(
                label: "Sign In",
                onTap: () {
                  if (key.currentState!.validate()) {
                    login();
                  }
                },
                isLoading: isLoading,
              ),
              const AddVerticleSpace(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't Have An Account?",
                    style: TextStyle(
                      color: AppColors.inversePrimary(context),
                    ),
                  ),
                  const AddHorizontalSpace(width: 5),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const RegisterScreen();
                          },
                        ),
                      );
                    },
                    child: Text(
                      "Register Now",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.inversePrimary(context),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
