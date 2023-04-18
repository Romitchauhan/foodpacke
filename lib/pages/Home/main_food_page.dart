import 'package:flutter/material.dart';
import 'package:foodpacke/utils/colors.dart';
import 'package:foodpacke/utils/dimension.dart';
import 'package:foodpacke/widgets/big_text.dart';
import 'package:foodpacke/widgets/small_text.dart';

import '../food/popular_food_detail.dart';
import 'food_page_body.dart';

class Mainfoodpage extends StatefulWidget {
  const Mainfoodpage({Key? key}) : super(key: key);

  @override
  State<Mainfoodpage> createState() => _MainfoodpageState();
}

class _MainfoodpageState extends State<Mainfoodpage> {


  @override
  Widget build(BuildContext context) {
    print("current height is"+MediaQuery.of(context).size.height.toString());
    return Scaffold(
      body: Column(
        children: [
          Container(

            child: Container(
              margin: EdgeInsets.only(top: Dimensions.height45, bottom: Dimensions.height15),
              padding: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(text: "Gujarat", color: AppsColors.maincolor),
                      Row(
                            children: [
                              SmallText(text: "Bhavnagar",color: Colors.black,),
                              Icon(Icons.arrow_drop_down_rounded)
                            ],
                      )

                    ],
                  ),
                  Container(
                    width: Dimensions.height45,
                    height: Dimensions.height45,
                    child: Icon(Icons.search,color: Colors.white,size: Dimensions.iconSize24,),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppsColors.maincolor,

                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(child: SingleChildScrollView(
              child: FoodPageBody(),
          ))
          ,
        ],
      ),
    );
  }
}
