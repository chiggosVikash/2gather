
import '../features/forgot_password/presentation/screens/change_password_screen.dart';
import '/src/features/forgot_password/presentation/screens/otp_screen.dart';

import '/src/features/forgot_password/presentation/screens/forgot_password_s.dart';
import '/src/features/home_page/presentation/screens/homepage_s.dart';
import 'package:go_router/go_router.dart';
import '../features/login/presentation/screens/login_screen.dart';
import '../features/sign_up/presentation/screens/sign_up_s.dart';


final appRouter = GoRouter(
  initialLocation: LoginScreen.routeAddress,
  routes: [

  GoRoute(path: HomepageS.routeAddress,
    name: HomepageS.routeName,
    builder: (context, state) => const HomepageS(),
  ),

  GoRoute(path: LoginScreen.routeAddress,
    name: LoginScreen.routeName,
    builder: (context, state) => const LoginScreen(),
  ),

  GoRoute(path: ForgotPasswordS.routeAddress,
    name: ForgotPasswordS.routeName,
    builder: (context, state) => const ForgotPasswordS(),
    routes: [
      GoRoute(path: OtpScreen.routeAddress,
        name: OtpScreen.routeName,
        builder: (context, state) => const OtpScreen(),
        routes: [
          GoRoute(path: ChangePasswordScreen.routeAddress,
            name: ChangePasswordScreen.routeName,
            builder: (context, state) => const ChangePasswordScreen(),
          ),
        ]
      ),
    ]
  ),

  GoRoute(path: SignUpS.routeAddress,
    name: SignUpS.routeName,
    builder: (context, state) => const SignUpS(),
  ),



]);