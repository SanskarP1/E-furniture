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
    Colors.red,
    Colors.green,
    Colors.brown,
  ];
  int _count = 1;

  void _incrementCounter() {
    setState(() {
      _count++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_count > 1) {
        _count--;
      }
    });
  }

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
                      child: Image.asset(
                        'assets/images/mid2.png',
                        fit: BoxFit.cover,
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
                  Positioned(
                    width: MediaQuery.sizeOf(context).width,
                    top: 360,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'A Chair',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  fontFamily: 'Inter',
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  // color: Colors.grey,
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20.0),
                                            bottomLeft: Radius.circular(20.0),
                                          ),
                                          color: Color.fromARGB(
                                              255, 194, 193, 193)),
                                      child: IconButton(
                                        splashColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        icon: const Icon(Icons.remove),
                                        onPressed: _decrementCounter,
                                      ),
                                    ),
                                    Text(
                                      _count < 10 ? '0$_count' : '$_count',
                                      style: const TextStyle(fontSize: 24),
                                    ),
                                    Container(
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20.0),
                                            bottomRight: Radius.circular(20.0),
                                          ),
                                          color: Color.fromARGB(
                                              255, 196, 196, 196)),
                                      child: IconButton(
                                        splashColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        icon: const Icon(Icons.add),
                                        onPressed: _incrementCounter,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Rs.1000',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20,
                                  fontFamily: 'Inter',
                                ),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Text('(4.0)'),
                              SizedBox(
                                width: 20,
                              ),
                              Text('(15 reviews)')
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Row(
                              children: [
                                Text(
                                  'Description',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      fontFamily: 'Inter'),
                                )
                              ],
                            ),
                          ),
                          const Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('data'),
                                  Text('data'),
                                  Text('data'),
                                  Text('data'),
                                  Text('data'),
                                ],
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              children: [
                                Text('Dimensions:',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 60),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text('data'),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text('data'),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text('data'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              child: SizedBox(
                height: 60,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: Container(
                        height: 60,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.black),
                        child: const Icon(
                          FontAwesomeIcons.solidHeart,
                          color: Colors.white,
                          size: 50,
                        ),
                      ),
                    ),
                    _addtocart(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  InkWell _addtocart() {
    return InkWell(
      child: Container(
          height: 60,
          width: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.black),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            child: Text(
              'Add to Cart',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          )),
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
