import 'package:app_mimic/components/search.field.dart';
import 'package:app_mimic/components/shop.container.dart';
import 'package:flutter/material.dart';

import '../constants/image.path.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50.0),
          child: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
                onPressed: () => {} ,
                icon: Image(
                  image: AssetImage(ico9), width: 100, height: 100,)
            ),
            title: const SearchFieldBar(),
            titleSpacing: 0,
            actions: [
              Container(
                alignment: Alignment.center,
                width: 52,
                child: IconButton(
                    onPressed: () => {},
                    icon: const Icon(Icons.account_balance_wallet_outlined)
                ),
              )
            ],
          ),
      ),

      body: const SingleChildScrollView(
          child: ShopContainer()
      ),

      bottomNavigationBar: BottomNavigationBar(
        elevation: 5.0,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.thumb_up_alt_outlined),
              label: 'Likes',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Messages',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Accounts',
            ),
        ]
      ),

    );
  }
}
