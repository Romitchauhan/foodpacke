import 'package:flutter/material.dart';
import 'package:foodpacke/utils/dimension.dart';
import 'package:foodpacke/widgets/small_text.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;

  final Color iconcolor;

  const IconAndTextWidget({Key? key,
    required this.icon,
    required this.text,

    required this.iconcolor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Icon(icon,color: iconcolor ,size: Dimensions.iconSize24,),
        SizedBox(width: 5,),
        SmallText(text: text,),

      ],
    );
  }
}
