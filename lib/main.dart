import 'package:alkanadra/ui/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        
      ),
      child: MaterialApp(
          supportedLocales: const [
            Locale('ar', 'EG'),
          ],
          locale: const Locale('ar'),
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          title: 'Al-Kandara',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(fontFamily: 'Cairo'),
          home: const SplashScreen()),
    );
  }
}
