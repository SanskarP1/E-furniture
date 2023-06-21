import 'package:flutter/material.dart';
import 'package:rohi_app/Models/model.dart';
import 'package:rohi_app/Utilities/discription.dart';

class Discover extends StatelessWidget {
  List<ProductModel> trendinglist = [
    ProductModel(
      images: [
        'assets/images/mid2.png',
        // 'assets/images/mid.png',
        // 'assets/images/mid.png'
      ],
      price: 4000,
    ),
    ProductModel(
      images: [
        'assets/images/mid.png',
        // 'assets/images/mid.png',
        // 'assets/images/mid.png'
      ],
      price: 343,
    ),
  ];

  Discover({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Column(
        children: <Widget>[
          const Row(
            children: [
              Text(
                'Discover',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Inter',
                ),
              ),
            ],
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: trendinglist.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DescriptionPage(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset(
                          trendinglist[index].images[0],
                          height: 150,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                        const Text(
                          'hello',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
