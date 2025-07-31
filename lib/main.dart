import 'package:flutter/material.dart';
import 'screens/profile_page.dart';

void main() {
  runApp(const ProfessionalProfileApp());
}

/// Main application entry point
/// Sets up the MaterialApp with professional theming
class ProfessionalProfileApp extends StatelessWidget {
  const ProfessionalProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Professional Profile UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Professional color scheme
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF1565C0), // Navy blue
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 21, 101, 192),
          brightness: Brightness.light,
        ),
        
        // Typography theme for consistency
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFF1565C0),
          ),
          headlineMedium: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFF1565C0),
          ),
          titleLarge: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xFF424242),
          ),
          bodyLarge: TextStyle(
            fontSize: 16,
            color: Color(0xFF616161),
            height: 1.5,
          ),
          bodyMedium: TextStyle(
            fontSize: 14,
            color: Color(0xFF757575),
            height: 1.4,
          ),
        ),
        
        // Card theme for consistent elevation and styling
        cardTheme: CardThemeData(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          margin: const EdgeInsets.symmetric(vertical: 8),
        ),
        
        // App bar theme
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1565C0),
          foregroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
        ),
        
        useMaterial3: true,
      ),
      home: const ProfilePage(),
    );
  }
}