import 'package:flutter/material.dart';
import 'package:sneaker_shop_app/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: Image.asset(
              'lib/images/logo.png',
              //height: 260,
            ),
          ),

          const SizedBox(
            height: 40,
          ),

          // title
          const Text('Just Do It',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),

          const SizedBox(height: 24),

          // subtitle
          Text(
            'Brand new sneakers and custom kicks made with premium quality',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 48,),

          // start now button
          GestureDetector(
            onTap: ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HomePage())),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.all(25),
                child: const Center(
                    child: Text('Shop Now', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold ),)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
