import 'package:education_app/utils/const.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class VideoSection extends StatelessWidget {
  VideoSection({super.key});

  List videoList = [
    "Introduction to Flutter",
    "Installing Flutter to windows",
    "Setup emulator on windows",
    "Creating our first app",
  ];

  List videoLength = [
    "20 min 50 sec",
    "15 min 22 sec",
    "30 min 10 sec",
    "1 hour 15 min",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: videoList.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: index == 0 ? mainColor : mainColor.withOpacity(0.6),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.play_arrow_rounded,
              color: Colors.white,
              size: 30,
            ),
          ),
          title: Text(
            videoList[index],
          ),
          subtitle: Text(
            videoLength[index],
          ),
        );
      },
    );
  }
}
