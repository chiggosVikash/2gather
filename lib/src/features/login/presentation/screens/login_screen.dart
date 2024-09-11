import 'package:backmate/src/features/login/presentation/providers/login_provider.dart';

import '../../../../error_handlers/auth_error_handler.dart';
import '../../../../shared/widgets/dialogues/dialogue.dart';
import '/src/shared/widgets/custom_button.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../home_page/presentation/screens/homepage_s.dart';
import '/src/features/forgot_password/presentation/screens/forgot_password_s.dart';
import '/src/features/sign_up/presentation/screens/sign_up_s.dart';
import '/src/shared/filled_input_design.dart';
import '/src/extension/context_extension.dart';
import '/src/shared/login_curve_painter.dart';
import 'package:flutter/material.dart';

class LoginScreen extends ConsumerWidget {
  static const routeAddress = '/login';
  static const routeName = 'Login';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        children: [
          // Top image section
          CustomPaint(
            painter: LoginCurvePainter(context: context),
            child: SizedBox(
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
                      context.pushNamed(ForgotPasswordS.routeName);
                    },
                    child: const Text('Forgot Password ?',
                        style: TextStyle(fontWeight: FontWeight.w600)),
                  ),
                ),
                SizedBox(height: context.height * .03),

                CustomButton(
                  title: "Login",
                  onPressed: () {
                    context.pushNamed(HomepageS.routeName);
                  },
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
                        context.pushNamed(SignUpS.routeName);
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
                Consumer(builder: (context, ref, child) { 
                  final state = ref.watch(loginProvider);   
                  return Center(
                    child: GestureDetector(
                      onTap: state.isLoading ? null : (){
                        _processDialogue(context, ref);
                        ref.read(loginProvider.notifier).loginWithGoogle();
                        
                      },
                      child: const CircleAvatar(
                                        backgroundImage: AssetImage('assets/google-logo.jpg'),
                                      ),
                    )); },),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _processDialogue(BuildContext context, WidgetRef ref){
    showDialog(context: context, builder: (context){

      return Consumer(builder: (context, ref, child)  {
          final state = ref.watch(loginProvider);
      if(state.isLoading){
        return const SavingDialogue(title: "Logging in...");
      }
      if(state.hasError){
        final error = state.error as AuthError;
        return FailedDialogue(message: error.message, cancelButton: (){
          context.pop();
        }, tryAgainButton: (){
          context.pop();
        });
      }
      return SuccessfulDialogue(content: "Login Successful", onPressed: (){
        context.pop();
        context.pushNamed(HomepageS.routeName);
      });
      },);
    
    });
  }
}
