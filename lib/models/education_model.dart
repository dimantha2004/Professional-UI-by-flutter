/// Model class representing education/certification information
/// Demonstrates clean data modeling for academic background
class Education {
  final String degree;
  final String institution;
  final String year;
  final String description;
  final String? gpa; // Optional GPA field

  const Education({
    required this.degree,
    required this.institution,
    required this.year,
    required this.description,
    this.gpa,
  });

  /// Creates Education from JSON data
  factory Education.fromJson(Map<String, dynamic> json) {
    return Education(
      degree: json['degree'] as String,
      institution: json['institution'] as String,
      year: json['year'] as String,
      description: json['description'] as String,
      gpa: json['gpa'] as String?,
    );
  }

  /// Converts Education to JSON
  Map<String, dynamic> toJson() {
    return {
      'degree': degree,
      'institution': institution,
      'year': year,
      'description': description,
      'gpa': gpa,
    };
  }

  /// Returns whether this is a certification or degree
  bool get isCertification {
    return degree.toLowerCase().contains('certificate') ||
           degree.toLowerCase().contains('certification') ||
           institution.toLowerCase().contains('google') ||
           institution.toLowerCase().contains('amazon') ||
           institution.toLowerCase().contains('microsoft');
  }

  /// Returns formatted display year
  String get formattedYear {
    if (year.length == 4) {
      return year;
    }
    return 'Class of $year';
  }
}