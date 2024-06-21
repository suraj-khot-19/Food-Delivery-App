import 'package:food_delivery/utils/exports.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.surface(context),
      body: Center(
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
              "Lets Create Account!",
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
            const AddVerticleSpace(height: 10),
            CustomTextFeild(
              controller: confirmPasswordController,
              hintText: "Confirm Password",
              obsecureText: true,
            ),
            const AddVerticleSpace(height: 25),
            CustomButton(
              label: "Sign Up",
              onTap: () {},
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
