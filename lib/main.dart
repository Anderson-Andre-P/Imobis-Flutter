import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:imobis/views/screens/onboarding_screen.dart';
import 'package:imobis/views/shared/theme/app_theme.dart';
import 'package:imobis/views/shared/theme/config.dart';
import 'package:overlay_support/overlay_support.dart';
import 'core/configuration/dependency_injection.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

Future<void> main() async {
  DependencyInjection.initialize();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return OverlaySupport.global(
      child: MaterialApp(
        title: 'Imobis',
        theme: appThemeLight(),
        darkTheme: appThemeDark(),
        themeMode: currentTheme.currentTheme(),
        // themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        home: const Onboarding(),
      ),
    );
  }
}
