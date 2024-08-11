import 'package:flutter/material.dart';

class ResponsiveTextBody extends StatelessWidget {
  const ResponsiveTextBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Welcome",
          style: TextStyle(
            fontSize: getResponsiveFontSize(20, context),
          ),
        ),
        Text(
          "Hello Every Body",
          style: TextStyle(
            fontSize: getResponsiveFontSize(18, context),
          ),
        ),
        Text(
          "My name is Taher",
          style: TextStyle(
            fontSize: getResponsiveFontSize(22, context),
          ),
        ),
      ],
    );
  }
}

double getResponsiveFontSize(double fontSize, BuildContext context) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;
  debugPrint(
      "-fontSize $fontSize scale factor $scaleFactor responsiveFontSize $responsiveFontSize lower $lowerLimit upper $upperLimit  result ${responsiveFontSize.clamp(lowerLimit, upperLimit)}");
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return width / 400;
  } else if (width < 900) {
    return width / 700;
  } else {
    return width / 1000;
  }
}
