import 'package:flutter/material.dart';
import 'package:my_portfolio/models/project.dart';
import 'package:my_portfolio/pages/project/project_detail.dart';
import 'package:my_portfolio/widgets/year/year_container.dart';

class ProjectCard extends StatelessWidget {
  final Project project;
  const ProjectCard({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProjectDetail(project: project),
          ),
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 1.3,
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.2),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  project.projectName,
                  style: const TextStyle(fontSize: 18),
                ),
                const YearContainer(year: '2021')
              ],
            ),
            Hero(
              tag: project.projectName,
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 15),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                clipBehavior: Clip.antiAlias,
                child: Image.network(
                  project.projectImageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(project.projectDescription)
          ],
        ),
      ),
    );
  }
}
