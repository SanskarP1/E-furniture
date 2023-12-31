import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rohi_app/Models/model.dart';

class TrendingPage extends StatelessWidget {
  final List<ProductModel> trendinglist = [
    ProductModel(
      images: 'assets/images/mid2.png',
      price: 4000,
    ),
    ProductModel(
      images: 'assets/images/mid.png',
      price: 343,
    ),
  ];

  TrendingPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Trending',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                        text: "Show All ",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        )),
                    WidgetSpan(
                      child: Icon(
                        FontAwesomeIcons.caretRight,
                        color: Colors.grey,
                        size: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListView.builder(
                  itemCount: trendinglist.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Image.asset(
                                      trendinglist[index].images,
                                      height: 150,
                                      width: 150,
                                      fit: BoxFit.cover,
                                    ),
                                  ],
                                ),
                                const Column(
                                  children: [
                                    Text('data'),
                                    Text('data'),
                                    Text('data'),
                                  ],
                                ),
                                Column(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: const Text('data'),
                                    )
                                  ],
                                )
                              ],
                            ),
                            const Divider(
                              indent: 120,
                              endIndent: 20,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
