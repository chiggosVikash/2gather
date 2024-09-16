import 'package:backmate/src/db/local/hive_db_manager.dart';
import 'package:backmate/src/routes/app_route.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/src/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'firebase_options.dart';

DotEnv dotenv = DotEnv();


Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await HiveDbManager().init();
  await dotenv.load(fileName: ".env");


  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routerConfig: appRouter(ref),
      debugShowCheckedModeBanner: false,
      title: '2Gather',
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              backgroundColor: MaterialTheme.lightScheme().inversePrimary),
          textTheme: GoogleFonts.ralewayTextTheme(),
          colorScheme: MaterialTheme.lightScheme()),
    );
  }
}
