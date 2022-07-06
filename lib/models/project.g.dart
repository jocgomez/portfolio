part of 'project.dart';

Project _$ProjectFromJson(Map<String, dynamic> json) => Project(
      projectName: json['projectName'] as String,
      projectYear: json['projectYear'] as int,
      projectImageUrl: json['projectImageUrl'] as String,
      projectDescription: json['projectDescription'] as String,
    );

Map<String, dynamic> _$ProjectToJson(Project instance) => <String, dynamic>{ 
      'projectName': instance.projectName,
      'projectYear': instance.projectYear,
      'projectImageUrl': instance.projectImageUrl,
      'projectDescription': instance.projectDescription,
    };