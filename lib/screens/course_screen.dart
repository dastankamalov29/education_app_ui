import 'package:education_app/utils/const.dart';
import 'package:flutter/material.dart';

import '../widgets/description_section.dart';
import '../widgets/video_section.dart';

// ignore: must_be_immutable
class CourseScreen extends StatefulWidget {
  String img;
  String count;
  CourseScreen(this.img, this.count);

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  bool isVideoSection = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.img),
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        leading: BackButton(),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              icon: Icon(
                Icons.notifications,
                color: mainColor,
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              height: 200,
              width: size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: mainColor2,
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/${widget.img}.png",
                  ),
                ),
              ),
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Icon(
                    Icons.play_arrow,
                    color: mainColor,
                    size: 35,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Text(
              "${widget.img} Complete Course",
              style: catCount2,
            ),
            SizedBox(height: 5),
            Text(
              "Created by dear programmer",
              style: catCount3,
            ),
            SizedBox(height: 5),
            Text(
              "${widget.count}",
              style: catCount4,
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              decoration: BoxDecoration(
                color: mainColor2,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Material(
                    color:
                        isVideoSection ? mainColor : mainColor.withOpacity(0.6),
                    borderRadius: BorderRadiusDirectional.circular(10),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isVideoSection = true;
                        });
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                        child: Text(
                          "Videos",
                          style: catCount5,
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color:
                        isVideoSection ? mainColor.withOpacity(0.6) : mainColor,
                    borderRadius: BorderRadiusDirectional.circular(10),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isVideoSection = false;
                        });
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                        child: Text(
                          "Description",
                          style: catCount5,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //Create 2 different section for video section and description section
            SizedBox(height: 10),

            isVideoSection ? VideoSection() : DescriptionSection(),
          ],
        ),
      ),
    );
  }
}
