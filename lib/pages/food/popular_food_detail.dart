import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodpacke/utils/dimension.dart';
import 'package:foodpacke/widgets/app_column.dart';
import 'package:foodpacke/widgets/app_icon.dart';
import 'package:foodpacke/widgets/exandable_text_widget.dart';

import '../../utils/colors.dart';
import '../../widgets/big_text.dart';
import '../../widgets/icon_and_text_widgets.dart';
import '../../widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //background image 
          Positioned(
            left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimensions.popularFoodImgSize,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/image/food7.png"
                    ),
                  )

                ),
          )),
          //icon widget
          Positioned(
            top: Dimensions.height45,
              left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
          )),
          //introduction of food 
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.popularFoodImgSize-20,
              child: Container(
              padding: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20,top: Dimensions.height20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.radius20),
                    topLeft: Radius.circular(Dimensions.radius20),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColumn(text: "Chinese side",),
                    SizedBox(height: Dimensions.height20,),
                    BigText(text: "Introduce"),
                    SizedBox(height: Dimensions.height20,),
                    Expanded(child: SingleChildScrollView(child: ExpandableTextWidget(text: "Chinese cuisine is notable for usage of seafood, vegetables and fruits in large quantities. The Chinese do not like fried food that is why they use a small quantity of oil when frying. The Chinese food contains healthful substances in large quantities.Chinese cuisine is notable for usage of seafood, vegetables and fruits in large quantities. The Chinese do not like fried food that is why they use a small quantity of oil when frying. The Chinese food contains healthful substances in large quantities.Chinese cuisine is notable for usage of seafood, vegetables and fruits in large quantities. The Chinese do not like fried food that is why they use a small quantity of oil when frying. The Chinese food contains healthful substances in large quantities.Chinese cuisine is notable for usage of seafood, vegetables and fruits in large quantities. The Chinese do not like fried food that is why they use a small quantity of oil when frying. The Chinese food contains healthful substances in large quantities.Chinese cuisine is notable for usage of seafood, vegetables and fruits in large quantities. The Chinese do not like fried food that is why they use a small quantity of oil when frying. The Chinese food contains healthful substances in large quantities. ")))
                  ],
                ),
          )),
          //expandable text widget 
        ],
      ),
      bottomNavigationBar: Container(
        height: 100,
        padding: EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20),
        decoration: BoxDecoration(
          color: AppsColors.buttonbackgroundcolor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius15*2),
            topRight: Radius.circular(Dimensions.radius15*2),
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 10,left: 10,right: 10),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.limeAccent,
              ),
              child: Row(
                children: [
                  Icon(Icons.remove,color: AppsColors.singcolor,),
                  SizedBox(width: Dimensions.width20/5,),
                  BigText(text: "0"),
                  SizedBox(width: Dimensions.width20/5,),
                  Icon(Icons.add,color: AppsColors.singcolor,),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 10,left: 10,right: 10),
              child: BigText(text: "\$40 | Add To cart",color: Colors.white,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: AppsColors.maincolor,

              ),
            )
          ],
        ),
      ),
    );
  }
}
