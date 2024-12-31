import 'package:flutter/material.dart';
import '../Models/Product_model.dart';
import '../Services/product_services.dart';
class ProductsProvider extends ChangeNotifier{
  List<ProductsModel> products = [];
  Future<void> getProducts() async {
    products = await Productsservices.GetProducts();
    notifyListeners();
  }
}