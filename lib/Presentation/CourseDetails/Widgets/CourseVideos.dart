import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Presentation/CourseDetails/Controller/CourseDetailsScreenController.dart';

import '../../../Core/Configs/StringResource.dart';

class CourseVideos extends StatelessWidget {
  const CourseVideos({Key? key, required this.controller}) : super(key: key);

  final CourseDetailsScreenController controller;

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    if(controller.course.value.chapters == null || controller.course.value.chapters!.isEmpty) {
      return Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(7)
        ),
        alignment: Alignment.center,
        child: Text(StringResource.noVideoCourse,style: TextStyle().withIranSans(
          color: colorScheme.background
        ),),
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(StringResource.courseVideos,
            style: const TextStyle().withIranSans(
                color: colorScheme.background,
                fontWeight: FontWeight.bold,
                fontSize: 16)),
        const SizedBox(
          height: 20,
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: controller.course.value.chapters?.length,
          itemBuilder: (context, index) {
            var chapter =
            controller.course.value.chapters![index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(7),
                child: Material(
                  color: Colors.white,
                  child: ExpansionTile(
                    title: Text(
                      chapter.title ?? "",
                      style: TextStyle().withIranSans(
                          fontWeight: FontWeight.bold),
                    ),
                    children: [
                      const Divider(
                        thickness: 1,
                        indent: 10,
                        endIndent: 10,
                      ),
                      ListView.builder(
                        physics:
                        const NeverScrollableScrollPhysics(),
                        itemCount: chapter.videos?.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          var video = chapter.videos![index];
                          return Material(
                            color: Colors.white,
                            child: InkWell(
                              onTap: () {},
                              child: ListTile(
                                leading: Icon(
                                  Icons.local_movies_outlined,
                                  color: (video.isActive ?? false)
                                      ? const Color(0xff525252)
                                      : const Color(0xff9E9E9E),
                                ),
                                title: Text(
                                  video.title ?? "",
                                  style: const TextStyle()
                                      .withIranSans(
                                      color: (video
                                          .isActive ??
                                          false)
                                          ? Colors.black
                                          : const Color(
                                          0xff9E9E9E)),
                                ),
                                trailing: Icon(
                                  (video.isActive ?? false)
                                      ? Icons.play_arrow
                                      : Icons.lock,
                                  color: (video.isActive ?? false)
                                      ? const Color(0xff525252)
                                      : const Color(0xff9E9E9E),
                                ),
                              ),
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
