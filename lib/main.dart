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
        // Modern professional color scheme
        primarySwatch: Colors.indigo,
        primaryColor: const Color(0xFF3F51B5), // Indigo primary
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF3F51B5),
          brightness: Brightness.light,
        ),
        
        // Enhanced typography theme
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w700,
            color: Color(0xFF1A237E),
            letterSpacing: -0.5,
          ),
          headlineMedium: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Color(0xFF1A237E),
            letterSpacing: -0.3,
          ),
          titleLarge: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xFF2C3E50),
            letterSpacing: -0.2,
          ),
          bodyLarge: TextStyle(
            fontSize: 16,
            color: Color(0xFF34495E),
            height: 1.6,
            letterSpacing: 0.1,
          ),
          bodyMedium: TextStyle(
            fontSize: 14,
            color: Color(0xFF5D6D7E),
            height: 1.5,
            letterSpacing: 0.1,
          ),
        ),
        
        // Enhanced card theme with shadows
        cardTheme: CardThemeData(
          elevation: 8,
          shadowColor: const Color(0xFF1A237E).withOpacity(0.15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 4),
        ),
        
        // Modern app bar theme
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF3F51B5),
          foregroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
          ),
        ),
        
        // Enhanced input decoration theme
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFFBDBDBD)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFF3F51B5), width: 2),
          ),
          filled: true,
          fillColor: Colors.grey[50],
        ),
        
        useMaterial3: true,
      ),
      home: const ProfilePage(),
    );
  }
}