import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const BgmiSettingsApp());
}

class BgmiSettingsApp extends StatelessWidget {
  const BgmiSettingsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'A70s BGMI Pro Settings',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.orangeAccent,
        scaffoldBackgroundColor: const Color(0xFF121212),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1E1E1E),
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.orangeAccent,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
        cardTheme: CardTheme(
          color: const Color(0xFF1E1E1E),
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        colorScheme: const ColorScheme.dark(
          primary: Colors.orangeAccent,
          secondary: Colors.deepOrangeAccent,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
      },
    );
  }
}
