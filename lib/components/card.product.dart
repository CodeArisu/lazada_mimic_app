import 'package:flutter/material.dart';

class CardProduct extends StatefulWidget {
  const CardProduct({
    super.key,
    required this.itemName,
    required this.itemPrice,
    required this.discountedPrice,
    required this.itemRate,
    required this.itemSold,
    required this.callback,
    required this.imgSource
  });

  final String itemName;
  final String itemPrice, discountedPrice;
  final String itemRate, itemSold;
  final VoidCallback callback;
  final String imgSource;

  @override
  State<CardProduct> createState() => _CardProductState();
}

class _CardProductState extends State<CardProduct> {
  @override
  Widget build(BuildContext context) {
    return _cardContext();
  }

  Widget _cardContext() => SizedBox(
        height: 100,
        child: InkWell(
          onTap: () {
            widget.callback.call();
            print('Card clicked!');
          },
          borderRadius:
              BorderRadius.circular(10.0), // Matches Card border radius
          child: Card(
            color: Colors.white,
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            margin: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Align children to start
              children: [
                Image.asset(
                  widget.imgSource,
                  height: 260,
                  width: double.infinity,
                  fit: BoxFit.cover, // Ensures the image fits nicely
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0), // Add padding for spacing
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // Align inner content
                    children: [
                      Text(
                        widget.itemName,
                        style: TextStyle(fontSize: 14),
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.ellipsis,
                      ), // Add spacing between texts
                      RichText(
                          text: TextSpan(
                              style: DefaultTextStyle.of(context).style,
                              children: <TextSpan>[
                            TextSpan(
                              text: "₱${widget.itemPrice} ",
                              style: TextStyle(fontSize: 14, color: Colors.redAccent),
                            ),
                            TextSpan(
                              text: "₱${widget.discountedPrice}",
                              style: TextStyle(fontSize: 14, decoration: TextDecoration.lineThrough),
                            ),
                          ])),
                      Text(
                        'New User Save ₱${widget.discountedPrice}',
                        style: TextStyle(fontSize: 14, color: Colors.redAccent),
                        textAlign: TextAlign.start,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 14,
                          ),
                          RichText(
                              text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(
                                text: " ${widget.itemRate}  ",
                                style: TextStyle(fontSize: 14),
                              ),
                              TextSpan(
                                text: '${widget.itemSold} sold',
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          )),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
