import 'package:flutter/material.dart';

/// About section widget displaying professional summary and current role
/// Demonstrates clean text layout and spacing principles
class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Section header
              Row(
                children: [
                  Icon(
                    Icons.person_outline,
                    color: Theme.of(context).primaryColor,
                    size: 24,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'About Me',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              ),
              
              const SizedBox(height: 16),
              
              // Professional summary
              Text(
                'Passionate software engineer trainee with a strong foundation in developing scalable web and mobile applications. '
                'Specialized in Flutter, React, and Node.js with a focus on learning user experience and clean code architecture. '
                'Eager to grow and contribute to high-quality products while developing technical skills.',
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.justify,
              ),
              
              const SizedBox(height: 16),
              
              // Current role section
              Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFFF8F9FA),
                      Color(0xFFE8F4FD),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(16),
                  border: const Border(
                    left: BorderSide(
                      width: 4,
                      color: Color(0xFF3F51B5), // Indigo accent
                    ),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF3F51B5).withOpacity(0.1),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Current Role',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: const Color(0xFF3F51B5),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Software Engineer Trainee at Syigen Pvt(Ltd)',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Learning and developing skills in building next-generation mobile applications',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}