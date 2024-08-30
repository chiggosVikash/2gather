import 'package:backmate/src/features/forgot_password/presentation/screens/forgot_password_s.dart';
import 'package:backmate/src/features/sign_up/presentation/screens/sign_up_s.dart';
import 'package:backmate/src/shared/filled_input_design.dart';

import '/src/extension/context_extension.dart';
import '/src/shared/login_curve_painter.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Top image section
          CustomPaint(
            painter: LoginCurvePainter(context: context),
            child: Container(
              height: context.height * .3,
              width: context.width, //
            ),
          ),
          // Image.asset("assets/handshake.jpeg"),

          // Form section
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(
                  horizontal: context.width * .04,
                  vertical: context.height * .01),
              children: [
                // Welcome Back Text
                Text('WELCOME BACK',
                    style: context.textTheme.headlineMedium!.copyWith(
                      color: context.colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    )),
                // SizedBox(height: context.height * .01),
                Text(
                  'Login to your account',
                  style: context.textTheme.bodyLarge!.copyWith(
                    color: context.colorScheme.secondary,
                  ),
                ),
                SizedBox(height: context.height * .04),

                // Email Input Field
                FilledInputDesign(
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: context.width * .02,
                            vertical: context.height * .005),
                        suffixIcon: const Icon(Icons.email),
                        labelText: 'Email ID',
                        border: InputBorder.none),
                  ),
                ),
                SizedBox(height: context.height * .03),

                // Password Input Field
                FilledInputDesign(
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: context.width * .02,
                            vertical: context.height * .005),
                        suffixIcon: const Icon(Icons.lock),
                        labelText: 'Enter Password',
                        border: InputBorder.none),
                  ),
                ),

                // Forgot Password
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ForgotPasswordS()));
                    },
                    child: const Text('Forgot Password ?',
                        style: TextStyle(fontWeight: FontWeight.w600)),
                  ),
                ),
                SizedBox(height: context.height * .03),

                // Login Button
                FilledButton(
                  onPressed: () {},
                  style: FilledButton.styleFrom(
                    minimumSize: Size(context.width * .9, context.height * .06),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: Text('Login',
                      style: context.textTheme.bodyLarge!.copyWith(
                          color: context.colorScheme.onPrimary,
                          fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: context.height * .02),

                // Sign Up Link
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?",
                        style: TextStyle(color: context.colorScheme.outline)),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUpS()));
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: context.height * .02),

                // OR Divider
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: context.width * .15,
                      child: const Divider(),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: context.width * .03),
                      child: Text(
                        "OR Continue With",
                        style: TextStyle(color: context.colorScheme.secondary),
                      ),
                    ),
                    SizedBox(
                      width: context.width * .15,
                      child: const Divider(),
                    ),
                  ],
                ),

                SizedBox(height: context.height * .02),

                // Google Sign In Button (Icon)
                const Center(
                    child: CircleAvatar(
                  backgroundImage: AssetImage('assets/google-logo.jpg'),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
