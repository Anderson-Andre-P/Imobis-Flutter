import 'package:flutter/material.dart';
import 'package:imobis/views/screens/onboarding_screen.dart';
import 'core/configuration/dependency_injection.dart';
import 'views/home/home_screen.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

Future<void> main() async {
  DependencyInjection.initialize();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return MaterialApp(
      title: 'Imobis',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: const Onboarding(),
    );
  }
}
