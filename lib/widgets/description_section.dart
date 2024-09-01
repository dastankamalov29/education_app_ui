import 'package:flutter/material.dart';

import '../utils/const.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Column(
        children: [
          Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
            style: textStyle2,
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Text(
                "Course length:",
                style: catCount3,
              ),
              Spacer(),
              Icon(Icons.timer, color: mainColor),
              SizedBox(width: 5),
              Text(
                "26 hours",
                style: catCount3,
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Rating:",
                style: catCount3,
              ),
              Spacer(),
              Icon(Icons.star, color: Colors.amber),
              SizedBox(width: 5),
              Text(
                "4.5",
                style: catCount3,
              )
            ],
          ),
        ],
      ),
    );
  }
}
