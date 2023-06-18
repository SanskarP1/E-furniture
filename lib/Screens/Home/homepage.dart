import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rohi_app/Screens/Home/drawer.dart';
import 'package:rohi_app/Screens/Home/grid_image.dart';
import 'package:rohi_app/Screens/Home/image_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  // List<String> images = [
  //   'assets/images/image1.png',
  //   'assets/images/image2.png',
  //   'assets/images/image3.png',
  //   'assets/images/image4.png',
  //   'assets/images/image5.png',
  // ];

  // List<String> titles = [
  //   'Title 1',
  //   'Title 2',
  //   'Title 3',
  //   'Title 4',
  //   'Title 5',
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: drawerPage(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          _scaffoldKey.currentState?.openDrawer();
                        },
                        child: const CircleAvatar(
                          backgroundColor: Colors.black,
                          child: Icon(
                            FontAwesomeIcons.bars,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Image.asset(
                        'assets/images/101.png',
                      ),
                    ],
                  ),
                ),

                // Search Bar Here!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width / 1.13,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Search',
                            prefixIcon: const Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      // Container(
                      //   height: 40,
                      //   width: 40,
                      //   decoration: BoxDecoration(
                      //     shape: BoxShape.circle,
                      //     border: Border.all(),
                      //   ),
                      //   child: const Icon(Icons.shopping_cart),
                      // ),
                    ],
                  ),
                ),
                // Image Slider Here !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
                const ImageSlider(),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Row(
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
                ),
                imagegrid(),
                Column(
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
                    listedimage(),
                    SizedBox(
                      height: 150,
                      width: MediaQuery.of(context).size.width / 0.2,
                      child: ListView.builder(
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return InkWell(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: const [
                                      BoxShadow(
                                        color:
                                            Color.fromARGB(255, 235, 234, 234),
                                        blurStyle: BlurStyle.solid,

                                        spreadRadius: 1.3, //extend the shadow
                                        offset: Offset(
                                          5.0,
                                          5.0,
                                        ),
                                      )
                                    ],
                                  ),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(15, 15, 0, 0),
                                    child: Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              'Collections',
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 18,
                                              ),
                                            ),
                                            const Text(
                                              'New Arrivals',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 22,
                                              ),
                                            ),
                                            const Text(
                                              'Summer',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 22,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 30,
                                            ),
                                            InkWell(
                                              onTap: () {},
                                              // splashColor: Colors.black,
                                              // highlightColor:
                                              //     Colors.transparent,
                                              // hoverColor:
                                              //     Colors.transparent,
                                              // focusColor:
                                              //     Colors.transparent,
                                              child: RichText(
                                                text: const TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: "Show All ",
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    WidgetSpan(
                                                      child: Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                          horizontal: 4.0,
                                                        ),
                                                        child: Icon(
                                                          FontAwesomeIcons
                                                              .caretRight,
                                                          color: Colors.black,
                                                          size: 14,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'assets/images/mid.png',
                                              height: 100,
                                              width: 100,
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
