import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:getx_demo/Models/product_model.dart';
import 'package:getx_demo/apis/api_urls.dart';

class ProductApiCalls {

  final options = BaseOptions(
      baseUrl: baseUrl,
    );

Dio _dio = Dio();
   
ProductApiCalls()  {
    _dio = Dio(options);

_dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (RequestOptions options, RequestInterceptorHandler handler) {

          // On Request data 

         return handler.next(options);
        
        },
        onResponse: (Response response, ResponseInterceptorHandler handler) {

          // On Responce data

          return handler.next(response);
        },
        onError: (DioException error, ErrorInterceptorHandler handler) {

        // On check error api response 
        
          return handler.next(error);
        },
      ),
    );
}

  Future<List<ProductModel>> products() async {
    List<ProductModel> productModels = <ProductModel>[];

    var response = await _dio.get('products');
                             
    if (response.statusCode == 200) {
      print(json.encode(response.data['products']));

      response.data['products'].forEach((element) {
        return productModels
            .add(ProductModel.fromJson(element));
      });
    }
    print(productModels.length);
    return productModels;
  }
}
