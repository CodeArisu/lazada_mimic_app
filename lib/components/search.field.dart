import 'package:flutter/material.dart';

class SearchFieldBar extends StatefulWidget {
  const SearchFieldBar({super.key});

  @override
  State<SearchFieldBar> createState() => _SearchFieldBarState();
}

class _SearchFieldBarState extends State<SearchFieldBar> {
  @override
  Widget build(BuildContext context) {
    return _formField();
  }

  Widget _formField() => Container(
        // margin: const EdgeInsets.only(right: 20),
        child: SizedBox(
          height: 40,
          child: TextFormField(
            decoration: InputDecoration(
                hintText: 'bags for women',
                hintStyle: const TextStyle(fontSize: 14),
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(10)),
                border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(10)),
                suffixIcon: Container(
                  width: 60,
                  margin: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Colors.orange, Colors.red],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(9),
                  ),
                  child: Material(
                    color: Colors.transparent, // Transparent material to show gradient
                    child: InkWell(
                      borderRadius: BorderRadius.circular(8),
                      onTap: () {
                        // Action for search button
                        print('Search button pressed');
                      },
                      child: const Center(
                        child: Text(
                          'Search',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
            ),
          ),
        ),
      );

}
