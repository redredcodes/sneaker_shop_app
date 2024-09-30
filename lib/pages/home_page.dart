import 'package:flutter/material.dart';
import 'package:sneaker_shop_app/components/bottom_nav_bar.dart';
import 'package:sneaker_shop_app/pages/shop_page.dart';

import 'cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // this selected index is to control the bottom nav bar
  int _selectedIndex = 0;

  // this method will update our selected index on tapping the bar
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // pages to display
  final List _pages = [
    // shop page
    const ShopPage(),
    // cart page
    const CartPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.menu),
            );
          }
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column( mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // logo
            Column(
              children: [
                SizedBox(
                  height: 200,
                  child: DrawerHeader(
                    //padding: EdgeInsets.zero,
                      child: Image.asset(
                        'lib/images/logo.png', color: Colors.white,
                      ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Divider(
                    color: Colors.grey[800],
                  ),
                ),

                // other pages
                 const Padding(
                   padding:   EdgeInsets.only(left: 25),
                   child: ListTile(
                    leading: Icon(Icons.home, color: Colors.white,),
                    title: Text('Home', style: TextStyle(color: Colors.white),),
                                   ),
                 ),

                const Padding(
                  padding:   EdgeInsets.only(left: 25),
                  child:  ListTile(
                    leading: Icon(Icons.info, color: Colors.white,),
                    title: Text('About', style: TextStyle(color: Colors.white),),
                  ),
                ),
              ],
            ),

            const Padding(
              padding:  EdgeInsets.only(left: 25, bottom: 25),
              child:  ListTile(
                leading: Icon(Icons.logout, color: Colors.white,),
                title: Text('Logout', style: TextStyle(color: Colors.white),),
              ),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar:
          BottomNavBar(onTabChange: (index) => navigateBottomBar(index)),
    );
  }
}
