import 'package:flutter/material.dart';

/// Header section widget containing profile picture, name, title, and location
/// Demonstrates use of CircleAvatar, Icons, and professional layout
class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF3F51B5), // Indigo primary
            Color(0xFF5C6BC0), // Lighter indigo
            Color(0xFF7986CB), // Even lighter indigo
          ],
          stops: [0.0, 0.5, 1.0],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            // Profile picture with hero animation potential
            Hero(
              tag: 'profile-avatar',
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Colors.white,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF1A237E), // Dark indigo
                        Color(0xFF3949AB), // Medium indigo
                      ],
                    ),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFF1A237E).withOpacity(0.3),
                        blurRadius: 12,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: const CircleAvatar(
                    radius: 56,
                    backgroundColor: Colors.transparent,
                    child: Text(
                      'DT', // Initials for Dimantha Theekshana
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            
            const SizedBox(height: 16),
            
            // Full name
            Text(
              'Dimantha Theekshana',
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                color: Colors.white,
                fontSize: 28,
              ),
              textAlign: TextAlign.center,
            ),
            
            const SizedBox(height: 8),
            
            // Professional title
            Text(
              'Software Engineer Trainee',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Colors.white70,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            
            const SizedBox(height: 12),
            
            // Location with icon
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.location_on,
                  color: Colors.white70,
                  size: 20,
                ),
                const SizedBox(width: 6),
                Text(
                  'Panadura',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.white70,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}