import 'package:flutter/material.dart';
import 'package:foodpacke/utils/colors.dart';
import 'package:foodpacke/utils/dimension.dart';
import 'package:foodpacke/widgets/app_icon.dart';
import 'package:foodpacke/widgets/big_text.dart';
import 'package:foodpacke/widgets/exandable_text_widget.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
              child: Center(child: BigText(size: Dimensions.font26,text: "Chinese slide "),),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5,bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius20),
                      topRight: Radius.circular(Dimensions.radius20)
                  )
                ),
              ),

            ),
            pinned: true,
            backgroundColor: AppsColors.yellowcolor,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                  "assets/image/food9.png",
                  width: double.maxFinite,
                  fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(

                  child: ExpandableTextWidget(text:
                  "Chinese cuisine is notable for usage of seafood, vegetables and fruits in large quantities."
                      "Chinese cuisine is notable for usage of seafood, vegetables and fruits in large quantities"
                      "Chinese cuisine is notable for usage of seafood, vegetables and fruits in large quantitiesChinese cuisine is notable for usage of seafood, vegetables and fruits in large quantitiesChinese cuisine is notable for usage of seafood, vegetables and fruits in large quantitiesChinese cuisine is notable for usage of seafood, vegetables and fruits in large quantitiesChinese cuisine is notable for usage of seafood, vegetables and fruits in large quantitiesChinese cuisine is notable for usage of seafood, vegetables and fruits in large quantitiesChinese cuisine is notable for usage of seafood, vegetables and fruits in large quantitiesChinese cuisine is notable for usage of seafood, vegetables and fruits in large quantitiesChinese cuisine is notable for usage of seafood, vegetables and fruits in large quantitiesChinese cuisine is notable for usage of seafood, vegetables and fruits in large quantitiesChinese cuisine is notable for usage of seafood, vegetables and fruits in large quantitiesChinese cuisine is notable for usage of seafood, vegetables and fruits in large quantitiesChinese cuisine is notable for usage of seafood, vegetables and fruits in large quantitiesChinese cuisine is notable for usage of seafood, vegetables and fruits in large quantitiesChinese cuisine is notable for usage of seafood, vegetables and fruits in large quantitiesChinese cuisine is notable for usage of seafood, vegetables and fruits in large quantitiesChinese cuisine is notable for usage of seafood, vegetables and fruits in large quantitiesChinese cuisine is notable for usage of seafood, vegetables and fruits in large quantitiesChinese cuisine is notable for usage of seafood, vegetables and fruits in large quantitiesChinese cuisine is notable for usage of seafood, vegetables and fruits in large quantitiesChinese cuisine is notable for usage of seafood, vegetables and fruits in large quantitiesChinese cuisine is notable for usage of seafood, vegetables and fruits in large quantitiesChinese cuisine is notable for usage of seafood, vegetables and fruits in large quantitiesChinese cuisine is notable for usage of seafood, vegetables and fruits in large quantitiesChinese cuisine is notable for usage of seafood, vegetables and fruits in large quantitiesChinese cuisine is notable for usage of seafood, vegetables and fruits in large quantitiesChinese cuisine is notable for usage of seafood, vegetables and fruits in large quantities"
                      "Chinese cuisine is notable for usage of seafood, vegetables and fruits in large quantitiesChinese cuisine is notable for usage of seafood, vegetables and fruits in large quantitiesChinese cuisine is notable for usage of seafood, vegetables and fruits in large quantitiesChinese cuisine is notable for usage of seafood, vegetables and fruits in large quantitiesChinese cuisine is notable for usage of seafood, vegetables and fruits in large quantitiesChinese cuisine is notable for usage of seafood, vegetables and fruits in large quantitiesChinese cuisine is notable for usage of seafood, vegetables and fruits in large quantitiesChinese cuisine is notable for usage of seafood, vegetables and fruits in large quantitiesChinese cuisine is notable for usage of seafood, vegetables and fruits in large quantitiesChinese cuisine is notable for usage of seafood, vegetables and fruits in large quantitiesChinese cuisine is notable for usage of seafood, vegetables and fruits in large quantities""Chinese cuisine is notable for usage of seafood, vegetables and fruits in large quantities.Chinese cuisine is notable for usage of seafood, vegetables and fruits in large quantities.Chinese cuisine is notable for usage of seafood, vegetables and fruits in large quantities.Chinese cuisine is notable for usage of seafood, vegetables and fruits in large quantities."
                  ),
                  margin: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(left: Dimensions.width20*2.5,right:Dimensions.width20*2.5,
            top: Dimensions.height10,bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  iconsize: Dimensions.iconSize16,
                    iconColor:Colors.white,backgroundColor:AppsColors.maincolor,icon: Icons.remove),
                BigText(text: "\$12.88 "+" X "+" 0 ",color: Colors.black87,size: Dimensions.font26,),
                AppIcon(
                    iconsize: Dimensions.iconSize16,
                    iconColor:Colors.white,backgroundColor:AppsColors.maincolor,icon: Icons.add),
              ],
            ),
          ),
          Container(
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
                    color: Colors.white,
                  ),
                  child:Icon(
                    Icons.favorite_border_outlined,
                    color: AppsColors.maincolor,
                    size: 27,
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
        ],
      ),
    );
  }
}
