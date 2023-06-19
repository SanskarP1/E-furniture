import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PageTop extends StatelessWidget {
  const PageTop({
    super.key,
    required GlobalKey<ScaffoldState> scaffoldKey,
  }) : _scaffoldKey = scaffoldKey;

  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
            'assets/images/logo.png',
          ),
          Image.asset(
            'assets/images/101.png',
          ),
        ],
      ),
    );
  }
}
