import 'package:foodpacke/data/api/api_client.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controllers/popular_product_controller.dart';
import '../data/repository/popular_product_repo.dart';
import '../utils/app_constants.dart';

Future<void> init()async{
  //api client
  Get.lazyPut(()=>ApiClient(appBaseUrl:AppConstants.BASE_URL));
  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient:Get.find()));
  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo:Get.find()));
}