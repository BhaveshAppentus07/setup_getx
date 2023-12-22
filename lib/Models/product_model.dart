
class ProductModel {
  int? id;
  String? name;
  int? price;
  String? brand;
  // ignore: prefer_typing_uninitialized_variables
  var status;

  ProductModel({
     this.id,
    this.name,
    this.price,
    this.brand,
    this.status,
  });

  static getName(){
    return 10;
  }

   factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id : json['id'],
      name : json['title'],
      price : json['price'],
      brand : json['brand'],
      status : json['status'],
    );
   }

}
