import 'dart:async';

import 'package:flutter/material.dart';

// Main page of the widget (Carousel)
class ImageSlider extends StatefulWidget {
  const ImageSlider({
    Key? key,
  }) : super(key: key);

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int activePage = 0;
  late PageController _pageController;
  List<String> images = [
    "https://images.pexels.com/photos/1191403/pexels-photo-1191403.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/9020063/pexels-photo-9020063.png?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/12437389/pexels-photo-12437389.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/58997/pexels-photo-58997.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
  ];

  Timer? _timer;
  static const Duration _slideDuration = Duration(seconds: 2);

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 1, initialPage: 0);
    _startAutoSlide();
  }

  void _startAutoSlide() {
    _timer = Timer.periodic(_slideDuration, (_) {
      final nextPage = (_pageController.page ?? 0) + 1;
      if (nextPage < images.length) {
        _pageController.animateToPage(
          nextPage.toInt(),
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      } else {
        _pageController.animateToPage(
          0,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  void _stopAutoSlide() {
    _timer?.cancel();
  }

  @override
  void dispose() {
    _stopAutoSlide();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 250,
            child: PageView.builder(
                itemCount: images.length,
                pageSnapping: true,
                controller: _pageController,
                onPageChanged: (page) {
                  setState(() => activePage = page);
                },
                itemBuilder: (context, pagePosition) {
                  bool active = pagePosition == activePage;
                  return slider(images, pagePosition, active);
                }),
          ),
        ),
        // const Padding(
        //   padding: EdgeInsets.all(0),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.start,
        //     // children: imageIndicator(images.length, activePage),
        //   ),
        // ),
      ],
    );
  }
}

// Animated container widget
AnimatedContainer slider(images, pagePosition, active) {
  double margin = active ? 1 : 10;

  return AnimatedContainer(
    duration: const Duration(milliseconds: 100),
    curve: Curves.easeInOutCubic,
    margin: EdgeInsets.all(margin),
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(
          images[pagePosition],
        ),
        fit: BoxFit.cover,
      ),
    ),
  );
}

// Widget for image animation while sliding carousel
imageAnimation(PageController animation, images, pagePosition) {
  return AnimatedBuilder(
    animation: animation,
    builder: (context, widget) {
      print(pagePosition);
      return SizedBox(
        width: 200,
        height: 200,
        child: widget,
      );
    },
    child: Container(
      margin: const EdgeInsets.all(10),
      child: Image.network(images[pagePosition]),
    ),
  );
}

// Widget for showing image indicator
// List<Widget> imageIndicator(imagesLength, currentIndex) {
//   return List<Widget>.generate(imagesLength, (index) {
//     return Container(
//       margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 4),
//       width: 10,
//       height: 10,
//       decoration: BoxDecoration(
//         color: currentIndex == index ? Colors.teal.shade400 : Colors.black26,
//         shape: BoxShape.circle,
//       ),
//     );
//   });
// }
