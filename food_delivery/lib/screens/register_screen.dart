// ignore_for_file: use_build_context_synchronously

import 'package:food_delivery/auth/auth_service.dart';
import 'package:food_delivery/utils/exports.dart';
import 'package:food_delivery/widgets/showing_snack_bar.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
//controllers
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();
  bool isLoading = false;
  final key = GlobalKey<FormState>();

//logic
  void register() async {
//instance of auth service
    AuthService authService = AuthService();

    //matching passwords then register
    if (passwordController.text == confirmPasswordController.text) {
      //creating user
      try {
        setState(() {
          isLoading = true;
        });
        await authService.signUp(emailController.text, passwordController.text);
        ShowingSnackBar().showingSnackBar(
          context,
          "Now You Can Login With Your Credential!",
        );
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const LoginScreen();
            },
          ),
          result: true,
        );
      } catch (e) {
        ShowingSnackBar().showingSnackBar(
          context,
          e.toString(),
        );
        setState(() {
          isLoading = false;
        });
      } finally {
        setState(() {
          isLoading = false;
        });
      }
    } else {
      ShowingSnackBar().showingSnackBar(
        context,
        "Password Dont Match!",
      );
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
              SizedBox(
                height: 170,
                width: 170,
                child: Image.asset(
                  "assets/app4.png",
                  fit: BoxFit.contain,
                ),
              ),
              const AddVerticleSpace(height: 20),
              Text(
                "Let's Create Account!",
                style: TextStyle(
                  color: AppColors.inversePrimary(context),
                  fontWeight: FontWeight.w600,
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
              const AddVerticleSpace(height: 10),
              CustomTextFeild(
                controller: confirmPasswordController,
                hintText: "Confirm Password",
                obsecureText: true,
              ),
              const AddVerticleSpace(height: 25),
              CustomButton(
                label: "Sign Up",
                onTap: () {
                  if (key.currentState!.validate()) {
                    register();
                  }
                },
                isLoading: isLoading,
              ),
              const AddVerticleSpace(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Alredy have an Account?",
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
                            return const LoginScreen();
                          },
                        ),
                      );
                    },
                    child: Text(
                      "Login Now",
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
    confirmPasswordController.dispose();
    super.dispose();
  }
}
