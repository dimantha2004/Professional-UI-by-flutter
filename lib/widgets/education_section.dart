import 'package:flutter/material.dart';
import '../models/education_model.dart';

/// Education section widget displaying academic background
/// Demonstrates use of ListTile and structured information display
class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  // Sample education data - in a real app, this would come from a data source
  static const List<Education> educationList = [
    Education(
      degree: 'Higher National Diploma in Computer Engineering',
      institution: 'Institute of Computer Engineering Technology (ICET)',
      year: '2024',
      description: 'Specialized in Computer Engineering and Software Development',
      gpa: '3.5/4.0',
    ),
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
                    Icons.school_outlined,
                    color: Theme.of(context).primaryColor,
                    size: 24,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'Education',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              ),
              
              const SizedBox(height: 16),
              
              // Education list
              ...educationList.map((education) => _buildEducationItem(context, education)).toList(),
            ],
          ),
        ),
      ),
    );
  }

  /// Builds individual education item using ListTile
  Widget _buildEducationItem(BuildContext context, Education education) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
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
          // Degree and year row
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  education.degree,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  education.year,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
          
          const SizedBox(height: 8),
          
          // Institution with icon
          Row(
            children: [
              Icon(
                Icons.location_city,
                size: 16,
                color: const Color(0xFF00695C),
              ),
              const SizedBox(width: 6),
              Expanded(
                child: Text(
                  education.institution,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: const Color(0xFF00695C),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          
          if (education.gpa != null) ...[
            const SizedBox(height: 6),
            Row(
              children: [
                Icon(
                  Icons.grade,
                  size: 16,
                  color: Colors.amber[700],
                ),
                const SizedBox(width: 6),
                Text(
                  'GPA: ${education.gpa}',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.amber[700],
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
          
          const SizedBox(height: 8),
          
          // Description
          Text(
            education.description,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}