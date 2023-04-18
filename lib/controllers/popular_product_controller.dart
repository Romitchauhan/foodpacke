import 'package:foodpacke/controllers/popular_product_controller.dart';
import 'package:foodpacke/controllers/popular_product_controller.dart';
import 'package:foodpacke/data/repository/popular_product_repo.dart';
import 'package:foodpacke/models/products_model.dart';
import 'package:get/get.dart';

import '../models/products_model.dart';
import '../models/products_model.dart';
import '../models/products_model.dart';

class PopularProductController extends GetxController{
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList=[];
  List<dynamic> get popularProductList =>_popularProductList;

   bool _isLoaded = false;
   bool get isLoaded=> _isLoaded;

  Future<void> getPopularProductList() async{
  Response response = await popularProductRepo.getPopularProductList();
  if(response.statusCode==200)
  {

    print("got products");
    _popularProductList=[];
    _popularProductList.addAll(Product.fromJson(response.body).product);
   //print(_popularProductList);
    _isLoaded=true;
    update();
  }
  else
  {

  }
  }
}



