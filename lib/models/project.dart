part 'project.g.dart';

/// {@template project}
/// Project description
/// {@endtemplate}
class Project {
  /// {@macro project}
  const Project(
      {required this.projectName,
      required this.projectYear,
      required this.projectImageUrl,
      required this.projectDescription,
      this.technologiesUsed});

  /// Creates a Project from Json map
  factory Project.fromJson(Map<String, dynamic> data) =>
      _$ProjectFromJson(data);

  final String projectName;
  final int projectYear;
  final String projectImageUrl;
  final String projectDescription;
  final List<String>? technologiesUsed;

  /// Creates a copy of the current Project with property changes
  Project copyWith({
    String? projectName,
    int? projectYear,
    String? projectImageUrl,
    String? projectDescription,
    List<String>? technologiesUsed,
  }) {
    return Project(
      projectName: projectName ?? this.projectName,
      projectYear: projectYear ?? this.projectYear,
      projectImageUrl: projectImageUrl ?? this.projectImageUrl,
      projectDescription: projectDescription ?? this.projectDescription,
      technologiesUsed: technologiesUsed ?? this.technologiesUsed,
    );
  }

  /// Creates a Json map from a Project
  Map<String, dynamic> toJson() => _$ProjectToJson(this);
}
