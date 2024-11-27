import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key});

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        flexibleSpace: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // previous button
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 1.0, vertical: 10),
                  child: IconButton(
                    icon: Image.asset('assets/back-icon.png'),
                    onPressed: () {},
                  ),
                ),

                // search field
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'labubu so cute so yummy',
                        hintStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                              color: Color(0xFFF00A62), width: 1.5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                              color: Color(0xFFF00A62), width: 1.5),
                        ),
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 1, horizontal: 1),
                        filled: true,
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(
                              top: 7, bottom: 7, left: 7, right: 1),
                          child: Image.asset('assets/search-icon.png'),
                        ),
                      ),
                      style: const TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),

                //chatbot icon
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 1.0, vertical: 10),
                  child: IconButton(
                    icon: Image.asset('assets/chatbot-icon.png'),
                    onPressed: () {},
                  ),
                ),

                //cart icon
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 1.0, vertical: 10),
                  child: IconButton(
                    icon: Image.asset('assets/cart-icon.png'),
                    onPressed: () {},
                  ),
                ),

                //menu icon
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 1.0, vertical: 10),
                  child: IconButton(
                    icon: Image.asset('assets/menu-icon.png'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Product Image
              Container(
                height: 300,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/item7.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Image 1
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(8),
                              border: Border.all(color: const Color(0XFfFF0066), width: 2),
                          image: const DecorationImage(
                            image: AssetImage('assets/item7.jpg'),
                            fit: BoxFit.cover, 
                          ),
                        ),
                      ),
                    ),
                
                    // Image 2
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: const DecorationImage(
                            image: AssetImage('assets/item7.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                
                    // Image 3
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: const DecorationImage(
                            image: AssetImage('assets/item7.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 5),

              // Price
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      '₱30.65',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0XFfFF0066)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Text('₱63.00',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[400],
                          decoration: TextDecoration.lineThrough,
                          decorationThickness: 2,
                          decorationColor: Colors.grey[400],
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFECEE),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.0),
                        child: Text(
                          '51%',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0XFfFF0066),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              // product Name
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  '🔥New Style🔥cute Labubu Little Sheep Keychain Girls',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Text(
                      'Durable and long lasting',
                      style: TextStyle(
                        fontSize: 12, 
                        color: Color(0xFFA76F4A),
                        fontWeight: FontWeight.bold,
                        ),
                    ),
                    SizedBox(width: 8),

                    // separator
                    Text(
                      '|',
                       style: TextStyle(
                        fontSize: 12, 
                        color: Color(0xFFA76F4A),
                        fontWeight: FontWeight.bold,
                        ),
                    ),
                    SizedBox(width: 8),

                    Text(
                      'High quality',
                      style: TextStyle(
                        fontSize: 12, 
                        color: Color(0xFFA76F4A),
                        fontWeight: FontWeight.bold,
                        ),
                    ),

                    SizedBox(width: 8),

                    Text(
                      '|',
                       style: TextStyle(
                        fontSize: 12, 
                        color: Color(0xFFA76F4A),
                        fontWeight: FontWeight.bold,
                        ),
                    ),
                    SizedBox(width: 8),

                    Text(
                      'Fast Delivery',
                      style: TextStyle(
                        fontSize: 12, 
                        color: Color(0xFFA76F4A),
                        fontWeight: FontWeight.bold,
                        ),
                    ),

                    
                  ],
                ),
              ),

              // ratings and number of sold items
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    // star Icon and Rating
                    Icon(Icons.star, color: Colors.orange, size: 16),
                    SizedBox(width: 4),
                    Text(
                      '4.5(124)',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                    SizedBox(width: 8),

                    // separator
                    Text(
                      '|',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                    SizedBox(width: 8),

                    // number of sold Items
                    Text(
                      '325 sold',
                      style: TextStyle(fontSize: 12, color: Colors.black),
                    ),
                  ],
                ),
              ),
            //   SizedBox(
            //     height: 400,
            //     width: double.infinity,
              
            // )
            ],
            
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
  child: SizedBox(
    height: 70, // Adjusted height to fit content
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center, // Center content vertically
      children: [
        // Store icon
        Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center vertically
          children: [
            IconButton(
              icon: Image.asset(
                'assets/store-icon.png',
                width: 25,
                height: 25,
              ),
              onPressed: () {},
            ),
            Text(
              'Store',
              style: TextStyle(color: Colors.grey[700], fontSize: 10),
            ),
          ],
        ),

        // Chat icon
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Image.asset(
                'assets/chat-icon.png',
                width: 25,
                height: 25,
              ),
              onPressed: () {},
            ),
            Text(
              'Chat',
              style: TextStyle(color: Colors.grey[700], fontSize: 10),
            ),
          ],
        ),

        // Buy Now button
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFFA101),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                minimumSize: const Size(double.infinity, 50), 
              ),
              onPressed: () {},
              child: const Text(
                'Buy Now',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),
              ),
            ),
          ),
        ),

        // Add to Cart button
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFF0066),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                minimumSize: const Size(double.infinity, 50), // Ensures uniform button height
              ),
              onPressed: () {},
              child: const Text(
                'Add to Cart',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  ),
),

    );
  }
}
