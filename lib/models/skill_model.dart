/// Model class representing a technical skill
/// Demonstrates clean data modeling practices
class Skill {
  final String name;
  final double proficiency; // 0.0 to 1.0
  final String category;

  const Skill({
    required this.name,
    required this.proficiency,
    required this.category,
  });

  /// Creates a Skill from JSON data
  factory Skill.fromJson(Map<String, dynamic> json) {
    return Skill(
      name: json['name'] as String,
      proficiency: (json['proficiency'] as num).toDouble(),
      category: json['category'] as String,
    );
  }

  /// Converts Skill to JSON
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'proficiency': proficiency,
      'category': category,
    };
  }

  /// Returns proficiency as percentage string
  String get proficiencyPercentage => '${(proficiency * 100).toInt()}%';

  /// Returns skill level description
  String get skillLevel {
    if (proficiency >= 0.8) return 'Expert';
    if (proficiency >= 0.6) return 'Proficient';
    if (proficiency >= 0.4) return 'Intermediate';
    return 'Beginner';
  }
}