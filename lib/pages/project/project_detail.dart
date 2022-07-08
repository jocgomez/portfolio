import 'package:flutter/material.dart';
import 'package:my_portfolio/models/project.dart';
import 'package:my_portfolio/responsive.dart';
import 'package:my_portfolio/widgets/year/year_container.dart';

class ProjectDetail extends StatelessWidget {
  final Project project;
  const ProjectDetail({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size; // <- This

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  project.projectName,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(width: 10),
            YearContainer(year: '${project.projectYear}')
          ],
        ),
      ),
      body: Container(
        width: screenSize.width,
        height: screenSize.height,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Hero(
                tag: project.projectName,
                child: Container(
                  constraints: BoxConstraints(maxHeight: screenSize.height / 2),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Responsive(
                    mobile: Image.network(
                      project.projectImageUrl,
                      fit: BoxFit.cover,
                    ),
                    tablet: Image.network(
                      project.projectImageUrl,
                      fit: BoxFit.cover,
                    ),
                    desktop: SizedBox(
                      height: 350,
                      child: Image.network(
                        project.projectImageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                'Technologies:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 8),
              HorizontalTechView(techUsed: project.technologiesUsed ?? []),
              const SizedBox(height: 15),
              const Text(
                'Description:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 8),
              Text(project.projectDescription)
            ],
          ),
        ),
      ),
    );
  }
}

class HorizontalTechView extends StatelessWidget {
  final List<String> techUsed;
  const HorizontalTechView({Key? key, required this.techUsed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return SizedBox(
      height: 45,
      width: screenSize.width,
      child: ListView.separated(
        physics: const AlwaysScrollableScrollPhysics(
          parent: BouncingScrollPhysics(),
        ),
        scrollDirection: Axis.horizontal,
        itemCount: techUsed.length,
        separatorBuilder: (context, index) {
          return const SizedBox(width: 15);
        },
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(8)),
            child: Text(
              techUsed[index],
            ),
          );
        },
      ),
    );
  }
}
