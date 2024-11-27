import 'package:app_mimic/components/item.cards.dart';
import 'package:app_mimic/components/item.menu.dart';
import 'package:flutter/material.dart';
import 'package:app_mimic/constants/image.path.dart';

class ShopContainer extends StatefulWidget {
  const ShopContainer({super.key});

  @override
  State<ShopContainer> createState() => _ShopContainerState();
}

class _ShopContainerState extends State<ShopContainer> {

  @override
  Widget build(BuildContext context) {
    return _contextContainer();
  }

  Container _saleContainer(double height, Decoration decoration, String leading, String trailing, List<String> price, List<String> discountedPrice, List<String> images) {
    return Container(
      height: height,
      decoration: decoration,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      leading,
                      style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),
                    ),
                    Text(
                      trailing,
                      style: const TextStyle(fontSize: 12.0),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ItemCards(price: price[0], discountedPrice: discountedPrice[0], imagePath: images[0], height: 200,),
                  ItemCards(price: price[1], discountedPrice: discountedPrice[1], imagePath: images[1], height: 200,),
                  ItemCards(price: price[2], discountedPrice: discountedPrice[2], imagePath: images[2], height: 200,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _iconRow(String title, String image) => Container(
    padding: EdgeInsets.zero,
    decoration: const BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(5))
    ),
    child: TextButton(
        onPressed: () => {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image(image: AssetImage(image), height: 40, width: 40,),
            Text(title, style: const TextStyle(fontSize: 10),)
          ],
        )
    ),
  );


  Widget _contextContainer() => Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
                color: Color(0xCC000000),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            child: Container(
              margin: const EdgeInsets.only(top: 5),
              child: const Align(
                  alignment: Alignment.topCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.local_shipping_rounded, // Your desired icon
                            color: Colors.white,
                            size: 14,
                          ),
                          SizedBox(width: 3),
                          Text('Free Shipping', style: TextStyle(color: Colors.white, fontSize: 12),),
                        ],
                      ),
                      SizedBox(width: 10),
                      Text('|', style: TextStyle(color: Colors.white),),
                      SizedBox(width: 10),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.safety_check_sharp, // Your desired icon
                            color: Colors.white,
                            size: 14,
                          ),
                          SizedBox(width: 3),
                          Text('Fast Delivery', style: TextStyle(color: Colors.white, fontSize: 12),),
                        ],
                      ),
                      SizedBox(width: 10),
                      Text('|', style: TextStyle(color: Colors.white),),
                      SizedBox(width: 10),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.assignment_return, // Your desired icon
                            color: Colors.white,
                            size: 14,
                          ),
                          SizedBox(width: 3),
                          Text('Free Returns', style: TextStyle(color: Colors.white, fontSize: 12),),
                        ],
                      ),
                    ],
                  )
              ),
            ),
          ),
          Container(
              margin: const EdgeInsets.only(top: 30),
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                  color: Color(0xE6FFFFFF),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
              child: ListView(
                // physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: <Widget>[
                  Container(
                    height: 120,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: 110,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 90,
                                  child: TextButton.icon(
                                        onPressed: () => {},
                                        label: const Text('Earn\nCoins', style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),),
                                        icon: const Image(
                                          isAntiAlias: true,
                                          matchTextDirection: true,
                                          width: 40,
                                          height: 40,
                                          image: AssetImage('assets/icon1.png'),
                                        ),
                                      ),
                                ),
                                const Text('Click to Collect >', style: TextStyle(fontSize: 11), textAlign: TextAlign.center),
                              ],
                            ),
                          ),

                          _iconRow('LazMart', ico6),
                          _iconRow('Bundle &\n Save', ico5),
                          _iconRow('Free Prize', ico8),
                          _iconRow('BigWinPlus', ico7),

                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  _saleContainer(
                      290, const BoxDecoration(color: Colors.white), 'New User Exclusive!', 'More >',
                      ["0.00", "13.15", "55.05"], ["199.00", "2,100.00", "293.00"], [img1, img2, img3]
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  _saleContainer(
                      290, const BoxDecoration(color: Colors.white), 'As low as ₱0.33', 'New User Exclusive >',
                      ["12.99", "13.15", "55.05"], ["108.83", "97.74", "168.71"], [img4, img5, img6]
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: const ItemMenu()
                  )
                ],

              )),
        ],
      );
}
