import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                            )),
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
                      Icons.settings,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
