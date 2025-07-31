import 'package:flutter/material.dart';
import '../models/skill_model.dart';

/// Skills section widget displaying technical skills with visual indicators
/// Demonstrates use of progress bars, grid layouts, and custom styling
class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  // Sample skills data - in a real app, this would come from a data source
  static const List<Skill> skills = [
    Skill(name: 'Flutter', proficiency: 0.9, category: 'Mobile'),
    Skill(name: 'Dart', proficiency: 0.9, category: 'Language'),
    Skill(name: 'React', proficiency: 0.8, category: 'Web'),
    Skill(name: 'Node.js', proficiency: 0.7, category: 'Backend'),
    Skill(name: 'Python', proficiency: 0.8, category: 'Language'),
    Skill(name: 'Firebase', proficiency: 0.7, category: 'Database'),
    Skill(name: 'Git', proficiency: 0.9, category: 'Tools'),
    Skill(name: 'Docker', proficiency: 0.6, category: 'DevOps'),
  ];

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
                    Icons.code,
                    color: Theme.of(context).primaryColor,
                    size: 24,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'Technical Skills',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              ),
              
              const SizedBox(height: 20),
              
              // Skills grid layout using Wrap for responsiveness
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: skills.map((skill) => _buildSkillItem(context, skill)).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Builds individual skill item with progress indicator
  Widget _buildSkillItem(BuildContext context, Skill skill) {
    return Container(
      width: (MediaQuery.of(context).size.width - 80) / 2, // Responsive width
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.grey[200]!,
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Skill name and category
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  skill.name,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  color: const Color(0xFF00695C).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  skill.category,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: const Color(0xFF00695C),
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          
          const SizedBox(height: 12),
          
          // Progress indicator
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Proficiency',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    '${(skill.proficiency * 100).toInt()}%',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF00695C),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 6),
              LinearProgressIndicator(
                value: skill.proficiency,
                backgroundColor: Colors.grey[300],
                valueColor: AlwaysStoppedAnimation<Color>(
                  _getProgressColor(skill.proficiency),
                ),
                minHeight: 6,
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Returns appropriate color based on proficiency level
  Color _getProgressColor(double proficiency) {
    if (proficiency >= 0.8) {
      return const Color(0xFF4CAF50); // Green for high proficiency
    } else if (proficiency >= 0.6) {
      return const Color(0xFF00695C); // Teal for medium proficiency
    } else {
      return const Color(0xFFFF9800); // Orange for developing skills
    }
  }
}