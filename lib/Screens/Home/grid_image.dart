import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

SizedBox imagegrid() {
  return SizedBox(
    height: 200,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/mid.png',
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
  );
}

SizedBox listedimage(context) {
  return SizedBox(
    height: 200,
    child: SingleChildScrollView(
      child: Column(
        children: [
          ListView.builder(
            itemCount: 3,
            shrinkWrap: true,
            primary: false,
            itemBuilder: (context, index) {
              return InkWell(
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
                                'assets/images/mid.png',
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
  );
}

SizedBox listedimagelist(BuildContext context) {
  return SizedBox(
    height: 150,
    width: MediaQuery.of(context).size.width / 0.2,
    child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return InkWell(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 235, 234, 234),
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
                  padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  WidgetSpan(
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 4.0,
                                      ),
                                      child: Icon(
                                        FontAwesomeIcons.caretRight,
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
                        mainAxisAlignment: MainAxisAlignment.center,
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
  );
}


// SizedBox listimage() {
//   return SizedBox(
//     height: 200,
//     child: ListView.builder(
//       itemCount: 10,
//       shrinkWrap: true,
//       primary: false,
//       itemBuilder: (context, index) {
//         return SingleChildScrollView(
//           child: InkWell(
//             onTap: () {},
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 children: [
//                   const SizedBox(height: 10),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Column(
//                         children: [
//                           Image.asset(
//                             'assets/images/mid.png',
//                             height: 150,
//                             width: 150,
//                             fit: BoxFit.cover,
//                           ),
//                         ],
//                       ),
//                       const Column(
//                         children: [
//                           Text('data'),
//                           Text('data'),
//                           Text('data'),
//                         ],
//                       ),
//                       Column(
//                         children: [
//                           ElevatedButton(
//                             onPressed: () {},
//                             child: const Text('data'),
//                           )
//                         ],
//                       )
//                     ],
//                   ),
//                   const Divider(
//                     indent: 120,
//                     endIndent: 20,
//                     color: Colors.grey,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//     ),
//   );
// }
