import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_catalog/widgets/small_text.dart';

class DescriptionText extends StatefulWidget {
  final String text;
  const DescriptionText({super.key, required this.text});

  @override
  State<DescriptionText> createState() => _DescriptionTextState();
}

class _DescriptionTextState extends State<DescriptionText> {
  late String firstHalf;

  late String secondHalf;

  bool hideText = true;

  double textLength = 200;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textLength) {
      firstHalf = widget.text.substring(0, textLength.toInt());
      secondHalf =
          widget.text.substring(textLength.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? SmallText(text: firstHalf)
          : Column(
              children: [
                SmallText(
                    text: hideText
                        ? (firstHalf + "...")
                        : (firstHalf + secondHalf)),
                InkWell(
                  onTap: (() {
                    setState((){
                      hideText = !hideText;

                    });
                  }),
                  child: Row(
                    children: [
                      SmallText(text: "Show More"),
                      Icon(hideText?Icons.arrow_drop_down: Icons.arrow_drop_up)
                    ],
                  ),
                )
              ],
            ),
    );
  }
}
