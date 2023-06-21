import 'package:flutter/material.dart';
import 'package:rohi_app/Screens/Navigation/Home/bestselling.dart';
import 'package:rohi_app/Screens/Navigation/Home/collections.dart';
import 'package:rohi_app/Screens/Navigation/Home/discover.dart';
import 'package:rohi_app/Screens/Navigation/Home/drawer.dart';
import 'package:rohi_app/Screens/Navigation/Home/image_slider.dart';
import 'package:rohi_app/Screens/Navigation/Home/offers.dart';
import 'package:rohi_app/Screens/Navigation/Home/page_top.dart';
import 'package:rohi_app/Screens/Navigation/Home/search.dart';
import 'package:rohi_app/Screens/Navigation/Home/trending.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

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
                PageTop(scaffoldKey: _scaffoldKey),
                const SearchBarTop(),
                const SizedBox(
                  height: 20,
                ),
                const ImageSlider(),
                Discover(),
                TrendingPage(),
                const Collections(),
                const BestSelling(),
                const Offres(),
                const SizedBox(
                  height: 15,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
