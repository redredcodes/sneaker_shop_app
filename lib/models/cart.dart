import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop_app/models/shoe.dart';

class Cart extends ChangeNotifier{
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Nike Air Max Plus 3',
        price: '171.99',
        imagePath: 'lib/images/Nike Air Max Plus 3.png',
        description: 'The sick looking fire that melts men\'s heart',),
    Shoe(
        name: 'Nike Dunk Low',
        price: '115',
        imagePath: 'lib/images/Nike Dunk Low.png',
        description: 'Created for the hardwood but taken to the streets'),
    Shoe(
        name: 'Nike React Vision',
        price: '120',
        imagePath: 'lib/images/Nike React Vision.png',
        description: "Don\'t get heart attack by it\'s look"),
    Shoe(
        name: 'Nike Pegasus Plus',
        price: '130',
        imagePath: 'lib/images/Nike Pegasus Plus.png',
        description: 'MEGASUS PEGASUS DON\'T LOOK AT US'),
  ];

// list of items in user cart
 List<Shoe> userCart = [];

// get list of shoes for sale
List<Shoe> getShoeList () {
  return shoeShop;
}
// get cart
List<Shoe> getUserCart() {
  return userCart;
}
// add items to cart
void addItemToCart(Shoe shoe) {
  return userCart.add(shoe);
  notifyListeners();
}
// remove item from cart
void removeItemFromCart(Shoe shoe) {
  userCart.remove(shoe);
}

}
