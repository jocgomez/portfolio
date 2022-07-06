import 'package:flutter/material.dart';

class IntroCard extends StatelessWidget {
  final String title;
  const IntroCard({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25.0),
      margin: const EdgeInsets.all(25.0),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(.15),
                offset: const Offset(0, 15),
                blurRadius: 25)
          ],
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(color: Colors.black, width: 1)),
      child: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
