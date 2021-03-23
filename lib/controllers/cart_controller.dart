import 'package:get/get.dart';
import 'package:getxcart/models/product.dart';

class CartController extends GetxController {
  var cartItems = List<Product>.empty().obs;
  int get count => cartItems.length;
  double get totalPrice => cartItems.fold(0, (sum, item) => sum + item.price);
  void addToCart(Product product) {
    cartItems.add(product);
  }
}
