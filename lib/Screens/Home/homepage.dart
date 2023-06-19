import 'package:flutter/material.dart';
import 'package:rohi_app/Screens/Home/bestselling.dart';
import 'package:rohi_app/Screens/Home/collections.dart';
import 'package:rohi_app/Screens/Home/discover.dart';
import 'package:rohi_app/Screens/Home/drawer.dart';
import 'package:rohi_app/Screens/Home/image_slider.dart';
import 'package:rohi_app/Screens/Home/offers.dart';
import 'package:rohi_app/Screens/Home/page_top.dart';
import 'package:rohi_app/Screens/Home/search.dart';
import 'package:rohi_app/Screens/Home/trending.dart';

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
                const ImageSlider(),
                const Discover(),
                const TrendingPage(),
                const Collections(),
                const BestSelling(),
                const Offres()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
