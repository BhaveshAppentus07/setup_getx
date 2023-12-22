
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:getx_demo/Models/product_model.dart';

class ProductApiCalls {



Future<ProductModel?> product() async {
  var dio = Dio();
var response = await dio.request(
  'https://dummyjson.com/products',
  options: Options(
    method: 'GET',
  ),
);

if (response.statusCode == 200) {
  
  print(json.encode(response.data["products"]));



  return ProductModel.fromJson(response.data['products'][0]);
}
else {
  print(response.statusMessage);
}
}

}