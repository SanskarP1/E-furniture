import 'package:flutter/material.dart';

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
            Container(
              decoration: const BoxDecoration(),
            )
          ],
        ),
      ),
    );
  }
}
