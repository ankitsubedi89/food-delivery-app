import 'package:flutter/cupertino.dart';

class BigText extends StatelessWidget {
  final Color? color;
  final String text;
  double size;
  TextOverflow overFlowText;
  BigText(
      {super.key,
      this.color,
      required this.text,
      this.overFlowText = TextOverflow.ellipsis,
      this.size = 20});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overFlowText,
      maxLines: 1,
      style: TextStyle(
          fontFamily: 'Raleway', 
          fontSize: size,
          color: color,
           fontWeight: FontWeight.w400),
    );
  }
}
