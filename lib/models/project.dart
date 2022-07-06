

part 'project.g.dart';

/// {@template project}
/// Project description
/// {@endtemplate}
class Project {
  /// {@macro project}
  const Project({ 
    required this.projectName,
    required this.projectYear,
    required this.projectImageUrl,
    required this.projectDescription,
  });

  /// Creates a Project from Json map
  factory Project.fromJson(Map<String, dynamic> data) => _$ProjectFromJson(data);

  /// A description for projectName
  final String projectName;
  /// A description for projectYear
  final int projectYear;
  /// A description for projectImageUrl
  final String projectImageUrl;
  /// A description for projectDescription
  final String projectDescription;

  /// Creates a copy of the current Project with property changes
  Project copyWith({ 
    String? projectName,
    int? projectYear,
    String? projectImageUrl,
    String? projectDescription,
  }) {
    return Project(
      projectName: projectName ?? this.projectName,
      projectYear: projectYear ?? this.projectYear,
      projectImageUrl: projectImageUrl ?? this.projectImageUrl,
      projectDescription: projectDescription ?? this.projectDescription,
    );
  }
  
  /// Creates a Json map from a Project
  Map<String, dynamic> toJson() => _$ProjectToJson(this);
}
