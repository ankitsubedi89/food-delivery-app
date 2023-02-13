import 'package:flutter/cupertino.dart';
import 'package:flutter_catalog/widgets/dimensions.dart';

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
      this.size = 0});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overFlowText,
      maxLines: 1,
      style: TextStyle(
          fontFamily: 'Raleway', 
          fontSize: size == 0 ? Dimensions.font20: size,
          color: color,
           fontWeight: FontWeight.w400),
    );
  }
}
