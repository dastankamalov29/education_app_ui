import 'package:flutter/material.dart';

import '../utils/const.dart';

class ContainerButtonModel extends StatelessWidget {
  final Color? bgColor;
  final double? containerWidth;
  final String iText;

  const ContainerButtonModel(
      {super.key, this.bgColor, this.containerWidth, required this.iText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: containerWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: bgColor,
      ),
      child: Center(

        child: Text(
          iText,
          style: containerButtonStyle,
        ),
      ),
    );
  }
}