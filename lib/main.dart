import 'package:backmate/src/routes/app_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/src/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      title: 'BackMate',
      theme: ThemeData(
          textTheme: GoogleFonts.ralewayTextTheme(),
          colorScheme: MaterialTheme.lightScheme()),
    );
  }
}
