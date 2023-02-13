import 'package:flutter/cupertino.dart';
import 'package:flutter_catalog/widgets/dimensions.dart';

class SmallText extends StatelessWidget {
  final Color? color;
  final String text;
  double size;
  double lineSpacing;
  SmallText(
      {super.key,
      this.color,
      required this.text,
      this.size = 0,
      this.lineSpacing = 1.5,});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: 'Raleway', 
          fontSize: size == 0 ? Dimensions.font12 : size,
          color: color,
          letterSpacing: lineSpacing,
           fontWeight: FontWeight.w400),
           textAlign: TextAlign.justify,
    );
  }
}
