import 'package:flutter/cupertino.dart';

class SmallText extends StatelessWidget {
  final Color? color;
  final String text;
  double size;
  double lineSpacing;
  SmallText(
      {super.key,
      this.color,
      required this.text,
      this.size = 12,
      this.lineSpacing = 1.5});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: 'Raleway', 
          fontSize: size,
          color: color,
          letterSpacing: lineSpacing,
           fontWeight: FontWeight.w400),
    );
  }
}
