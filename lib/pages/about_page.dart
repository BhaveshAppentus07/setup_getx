import 'package:flutter/material.dart';
import 'package:getx_demo/Models/product_model.dart';
import 'package:getx_demo/apis/product_api_call.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {

  ProductApiCalls _pro = ProductApiCalls();

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue,
        title: Text('Api Data Get',style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: FutureBuilder<List<ProductModel>>(
          future: _pro.products(),
          builder: (context,future) {
            
            if(future.hasData){
              return ListView.builder(
                itemCount: future.data!.length,
                itemBuilder: (context,index){
                return Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text('Product Name:-'),
                        SizedBox(width: 5,),
                        Text(future.data![index].name.toString()),
                      ],
                    ),
                    SizedBox(height: 5,),
                   Row(
                     children: [
                          Text('Product Brand:-'),
                        SizedBox(width: 5,),
                        Text(future.data![index].brand.toString()),
                     ],
                   ),
                    SizedBox(height: 5,),
                     Row(
                     children: [
                          Text('Product Price:-'),
                        SizedBox(width: 5,),
                        Text('₹ ${future.data![index].price.toString()}'),
                     ],
                   ),
                   SizedBox(height: 10,),
                   Divider()
                    
                  ],
                ),
              );
            
              });
            }
            return CircularProgressIndicator();
          }
        ),
      ),
    );
  }
}