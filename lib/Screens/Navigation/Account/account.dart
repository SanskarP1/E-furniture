import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rohi_app/Screens/Navigation/Home/offers.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: const TextSpan(
                      children: [
                        // WidgetSpan(
                        //   child: InkWell(
                        //     onTap: () {},
                        //     child: const Icon(
                        //       FontAwesomeIcons.angleLeft,
                        //       color: Colors.black,
                        //       size: 20,
                        //     ),
                        //   ),
                        // ),
                        TextSpan(
                          text: "Profile ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.settings_outlined,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 2,
                          color: Colors.black,
                        ),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/mid.png'),
                            fit: BoxFit.cover),
                      ),
                    ),
                    const Text(
                      'Rohi International',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Inter",
                        fontSize: 15,
                      ),
                    ),
                    const Text(
                      'Kathmandu,Nepal',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w200,
                        fontFamily: "Inter",
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 236, 235, 235),
                ),
                child: const Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "89",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "My Wishlist",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    VerticalDivider(
                      color: Colors.black,
                      thickness: 1,
                      width: 20,
                      endIndent: 20,
                      indent: 20,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "5",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "My Cart",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Offres(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 9),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: const Color.fromARGB(255, 231, 230, 230)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        iconcolumn(FontAwesomeIcons.idCard, 'To Pay'),
                        iconcolumn(FontAwesomeIcons.box, 'To Ship'),
                        iconcolumn(FontAwesomeIcons.truck, 'To Receive'),
                        iconcolumn(FontAwesomeIcons.comment, 'To Review'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        iconrow(
                            FontAwesomeIcons.arrowRotateRight, 'My Returns  '),
                        iconrow(
                            FontAwesomeIcons.skullCrossbones, 'Cancellations'),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: const Color.fromARGB(255, 231, 230, 230),
                ),
                child: Row(
                  children: [
                    iconcolumn1(FontAwesomeIcons.paypal, 'Payment'),
                    iconcolumn1(FontAwesomeIcons.box, 'Help Center'),
                    iconcolumn1(FontAwesomeIcons.truck, 'My reviews'),
                    iconcolumn1(FontAwesomeIcons.comment, 'Contact'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding iconrow(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row(
        children: [
          Icon(icon),
          Text(text),
        ],
      ),
    );
  }

  Padding iconcolumn1(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 15),
      child: Column(
        children: [
          Icon(icon),
          Text(
            text,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Padding iconcolumn(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
      child: Column(
        children: [
          Icon(icon),
          Text(
            text,
          ),
        ],
      ),
    );
  }
}
