import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({Key? key}) : super(key: key);

  @override
  DescriptionPageState createState() => DescriptionPageState();
}

class DescriptionPageState extends State<DescriptionPage> {
  int selectedButtonIndex = 0;

  List<Color> buttonColors = [
    Colors.black,
    Colors.green,
    Colors.brown,
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 243, 241, 241),
        body: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    top: 30,
                    left: 100,
                    child: Container(
                      height: 300,
                      width: 300,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0),
                        ),
                        color: Color.fromARGB(255, 209, 211, 212),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 180,
                    left: 80,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(255, 185, 184, 184),
                            blurStyle: BlurStyle.solid,
                            spreadRadius: 1,
                            offset: Offset(1.0, 1.0),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          for (int i = 0; i < buttonColors.length; i++)
                            circleButton(i),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 80,
                    left: 80,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          FontAwesomeIcons.angleLeft,
                          size: 35,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget circleButton(int index) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedButtonIndex = index;
          });
        },
        child: CircleAvatar(
          radius: 17,
          backgroundColor:
              selectedButtonIndex == index ? buttonColors[index] : Colors.white,
          child: CircleAvatar(
            radius: 10,
            backgroundColor: selectedButtonIndex == index
                ? Colors.white
                : buttonColors[index],
          ),
        ),
      ),
    );
  }
}
