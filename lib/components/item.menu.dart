import 'package:app_mimic/components/card.product.dart';
import 'package:flutter/material.dart';
import 'package:app_mimic/constants/image.path.dart';
import 'package:app_mimic/constants/image.path.dart';

class ItemMenu extends StatefulWidget {
  const ItemMenu({super.key});

  @override
  State<ItemMenu> createState() => _ItemMenuState();
}

class _ItemMenuState extends State<ItemMenu> {
  @override
  Widget build(BuildContext context) {
    return _gridContext();
  }

  Widget _gridContext() => GridView.builder(
    padding: EdgeInsets.all(3),
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 3,
        crossAxisSpacing: 5,
        childAspectRatio: 1 / 1.5
    ),
    itemCount: 10,
    physics: NeverScrollableScrollPhysics(),
    itemBuilder: (context, i) => CardProduct(
      itemName: '🔥New Style🔥cute Labubu Little Sheep Keychain Girls',
      itemPrice: "30.65",
      itemRate: "4.5",
      itemSold: "325",
      discountedPrice: "63.00",
      callback: () => {
        // dre e route
      }, imgSource: img7,
    ),
    shrinkWrap: true,
  );

}
