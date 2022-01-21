import 'dart:ffi';

class Product {
  int? id;
  String? libelle;
  String? description;
  Float? sold;
  int? quantity;
  String? image;
  bool? new_product;
  Float? price;
  int? categorie_id;
  int? user_id;


Product({
  this.id,
  this.libelle,
  this.description,
  this.sold,
  this.quantity,
  this.image,
  this.new_product,
  this.price,
  this.categorie_id,
  this.user_id,
});


  factory Product.fromJson(Map<String, dynamic> json){
    return Product(
      id:json['user']['id'],
      libelle:json['user']['id'],
      description:json['user']['id'],
      sold:json['user']['id'],
      quantity:json['user']['id'],
      image:json['user']['id'],
      new_product:json['user']['id'],
      price:json['user']['id'],
      categorie_id:json['user']['id'],
      user_id:json['user']['id'],
    );
  }

}
