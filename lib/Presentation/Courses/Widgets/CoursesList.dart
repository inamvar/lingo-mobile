import 'package:flutter/material.dart';
import 'package:lingo/Presentation/Courses/Widgets/CourseItem.dart';

import '../../../Core/Dto/Models/Course.dart';

class CoursesList extends StatelessWidget {
  const CoursesList({Key? key, required this.courses}) : super(key: key);

  final List<Course> courses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(bottom: 70),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: courses.length,
      itemBuilder: (context, index) => CourseItem(
        margin: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
        course: courses[index],
      ),
    );
  }
}
