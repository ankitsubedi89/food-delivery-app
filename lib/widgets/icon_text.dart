import 'package:flutter/widgets.dart';
import 'package:flutter_catalog/widgets/dimensions.dart';
import 'package:flutter_catalog/widgets/small_text.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;

  const IconText({super.key, required this.icon, required this.text, required this.iconColor});
  
  

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconColor,),
        SizedBox(width: Dimensions.width5,),
        SmallText(text: text)
      ],
    );
  }
}