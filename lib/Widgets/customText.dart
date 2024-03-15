

import 'package:flutter/cupertino.dart';

class CustomText extends StatelessWidget {
  CustomText({super.key, required this.text,this.weight,this.size,
    this.color,this.align,this.style,this.fmly});
  String text;
  Color? color;
  double? size;
  FontWeight? weight;
  TextAlign? align;
  FontStyle? style;
  String? fmly;

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: align,
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: weight,
        fontStyle: style,
        fontFamily: fmly,

      ),
    );
  }
}
