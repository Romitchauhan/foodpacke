import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodpacke/widgets/small_text.dart';

import '../utils/colors.dart';
import '../utils/dimension.dart';
import 'big_text.dart';
import 'icon_and_text_widgets.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text,size: Dimensions.font26, ),
        SizedBox(height: Dimensions.height10,),
        //comment section
        Row(
          children: [
            Wrap(
              children: List.generate(5, (index) {return Icon(Icons.star,color: AppsColors.maincolor,size: 10,);}),
            ),
            SizedBox(width: 10,),
            SmallText(text: "4.5"),
            SizedBox(width: 10,),
            SmallText(text: "1287"),
            SizedBox(width: 10,),
            SmallText(text: "comments")
          ],
        ),
        SizedBox(height: Dimensions.height20,),
        //time and distance section
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(icon: Icons.circle_sharp,
                text: "Normal",
                iconcolor: AppsColors.iconcolor1),
            IconAndTextWidget(icon: Icons.location_on,
                text: "1.7km",
                iconcolor: AppsColors.maincolor),
            IconAndTextWidget(icon: Icons.access_alarm_rounded,
                text: "32min",
                iconcolor: AppsColors.iconcolor1),
          ],
        )
      ],
    );
  }
}
