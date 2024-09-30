import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop_app/models/cart.dart';
import 'package:sneaker_shop_app/pages/intro_page.dart';

void main() {
  runApp(const SneakerApp());
}

class SneakerApp extends StatelessWidget{
  const SneakerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) =>  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const IntroPage(),
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.grey[300],
            appBarTheme: const AppBarTheme(
                color: Colors.transparent
            )
        ),
      ),
    );
  }
}

