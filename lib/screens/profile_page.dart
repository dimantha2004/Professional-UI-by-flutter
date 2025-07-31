import 'package:flutter/material.dart';
import '../widgets/header_section.dart';
import '../widgets/about_section.dart';
import '../widgets/skills_section.dart';
import '../widgets/education_section.dart';

/// Main profile page that combines all sections
/// Demonstrates clean widget composition and layout
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5), // Light grey background
      appBar: AppBar(
        title: const Text(
          'Professional Profile',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            // Header section with profile picture and basic info
            HeaderSection(),
            
            SizedBox(height: 16),
            
            // About section with professional summary
            AboutSection(),
            
            SizedBox(height: 16),
            
            // Skills section with progress indicators
            SkillsSection(),
            
            SizedBox(height: 16),
            
            // Education section with academic background
            EducationSection(),
            
            SizedBox(height: 32), // Extra bottom padding
          ],
        ),
      ),
    );
  }
}