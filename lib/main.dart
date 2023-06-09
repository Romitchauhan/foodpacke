import 'package:flutter/material.dart';
import 'package:foodpacke/controllers/popular_product_controller.dart';
import 'package:foodpacke/pages/Home/food_page_body.dart';
import 'package:foodpacke/pages/Home/main_food_page.dart';
import 'package:foodpacke/pages/food/popular_food_detail.dart';
import 'package:foodpacke/pages/food/recommended_food_detail.dart';
import 'package:get/get.dart';
import 'helper/dependencies.dart'as dep;


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    return GetMaterialApp(
    debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Mainfoodpage(),
    );
  }
}


