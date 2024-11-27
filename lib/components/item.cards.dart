import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemCards extends StatefulWidget {
  const ItemCards(
      {super.key,
      required this.price,
      this.discountedPrice,
      required this.imagePath,
      this.itemName,
      required this.height });

  final String price;
  final String? discountedPrice;
  final String imagePath;
  final String? itemName;
  final double height;

  @override
  State<ItemCards> createState() => _ItemCardsState();
}

class _ItemCardsState extends State<ItemCards> {
  @override
  Widget build(BuildContext context) {
    return _cardContext();
  }

  Widget _cardContext() => Flexible(

          child: Card.filled(
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 5),
                  height: 150,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(widget.imagePath),
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                      ),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(5))),
                ),
                Container(
                  height: 70,
                  padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: widget.itemName != null
                                ? Text(
                              "${widget.itemName}",
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10
                              ),
                            )
                                : null),
                        _hasTitle(widget.itemName),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: widget.discountedPrice != null && widget.itemName == null
                                ? Text(
                              "₱${widget.discountedPrice}",
                              style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  decoration: TextDecoration.lineThrough),
                            )
                                : null
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: widget.itemName != null ? Text("star") : null,
                        )
                      ],
                    )
                )
              ],
            ),
          ),
      );

  Widget _hasTitle(String? itemName) {
    if (itemName == null) {
      return Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "₱${widget.price}",
                style: const TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
          );
    } else {
      return Row(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "₱${widget.price}",
              style: const TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold, fontSize: 9),
            ),
          ),
          SizedBox(width: 10,),
          Align(
              alignment: Alignment.centerLeft,
              child: widget.discountedPrice != null
                  ? Text(
                "₱${widget.discountedPrice}",
                style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 9,
                    decoration: TextDecoration.lineThrough),
              )
                  : null)
        ],
      );
    }
  }
}
