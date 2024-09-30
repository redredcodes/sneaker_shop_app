import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop_app/models/cart.dart';
import 'package:sneaker_shop_app/models/shoe.dart';

import '../components/cart_item.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child)=> Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column( crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // heading
            const Text(
                'My Cart',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            
            const SizedBox(height: 10),
            
            Expanded(child: ListView.builder(
              itemCount: value.getUserCart().length,
                itemBuilder: (context, index){
              // get individual shoe
              Shoe individualShoe = value.getUserCart()[index];

              // return the cart item
              return CartItem(shoe: individualShoe,);
            })),

            // checkout button
            GestureDetector(
              onTap: (){},
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(20),
                  child: const Center(
                      child: Text('Checkout', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold ),)),
                ),
              ),
            )

          ],
        ),
    ));
  }
}
