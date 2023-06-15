import 'package:flutter/material.dart';

class ImageGrid extends StatefulWidget {
  const ImageGrid({super.key});

  @override
  State<ImageGrid> createState() => _ImageGridState();
}

class _ImageGridState extends State<ImageGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100, // Set the desired height
                  width: 200,
                  // Set the desired width
                  color: Colors.amber,
                  // Replace YourChildWidget with your actual widget
                ),
              );
            },
          ))
        ],
      ),

      // body: GridView.builder(
      //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 4,
      //     mainAxisSpacing: 15,
      //     crossAxisSpacing: 15,
      //     mainAxisExtent: 200,
      //   ),
      //   itemCount: 5,
      //   shrinkWrap: true,
      //   primary: false,
      //   itemBuilder: (context, index) {
      //     return InkWell(
      //       child: Container(
      //         color: Colors.amber,
      //         height: 200,
      //         width: 60,
      //       ),
      //     );
      //   },
      // ),
    );
  }
}
