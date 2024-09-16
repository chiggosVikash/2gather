import 'package:backmate/src/db/local/hive_query.dart';
import 'package:backmate/src/features/login/presentation/providers/login_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/src/features/request_by_you_history/presentation/screens/request_by_you_history.dart';
import '/src/features/request_to_you/presentation/screens/request_to_you.dart';
import '../features/forgot_password/presentation/screens/change_password_screen.dart';
import '/src/features/forgot_password/presentation/screens/otp_screen.dart';
import '/src/features/forgot_password/presentation/screens/forgot_password_s.dart';
import '/src/features/home_page/presentation/screens/homepage_s.dart';
import 'package:go_router/go_router.dart';
import '../features/login/presentation/screens/login_screen.dart';
import '../features/sign_up/presentation/screens/sign_up_s.dart';

GoRouter appRouter(WidgetRef ref){
  return GoRouter(
  
  redirect: (context,state){
    return HiveQuery().getAccessToken().then((value) {

      if(value != null){
        return ref.read(loginProvider.notifier).verifyToken(value).then((result){
          if(result == "TokenVerified"){
            return HomepageS.routeAddress;
          }
          return LoginScreen.routeAddress;
        });

      }else{
        return LoginScreen.routeAddress;
      }

      // return LoginScreen.routeAddress;
    });
      
    
    
  },
  
  
  initialLocation: LoginScreen.routeAddress, routes: [
  GoRoute(
    path: HomepageS.routeAddress,
    name: HomepageS.routeName,
    builder: (context, state) => const HomepageS(),
  ),
  GoRoute(
    path: LoginScreen.routeAddress,
    name: LoginScreen.routeName,
    builder: (context, state) => const LoginScreen(),
  ),
  GoRoute(
      path: ForgotPasswordS.routeAddress,
      name: ForgotPasswordS.routeName,
      builder: (context, state) => const ForgotPasswordS(),
      routes: [
        GoRoute(
            path: OtpScreen.routeAddress,
            name: OtpScreen.routeName,
            builder: (context, state) => const OtpScreen(),
            routes: [
              GoRoute(
                path: ChangePasswordScreen.routeAddress,
                name: ChangePasswordScreen.routeName,
                builder: (context, state) => const ChangePasswordScreen(),
              ),
            ]),
      ]),
  GoRoute(
    path: SignUpS.routeAddress,
    name: SignUpS.routeName,
    builder: (context, state) => const SignUpS(),
  ),
  GoRoute(
    path: RequestToYou.routeAddress,
    name: RequestToYou.routeName,
    builder: (context, state) => const RequestToYou(),
  ),
  GoRoute(
      path: RequestByYouHistory.routeAddress,
      name: RequestByYouHistory.routeName,
      builder: (context, state) => const RequestByYouHistory())
]);

}

