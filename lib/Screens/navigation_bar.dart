import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rohi_app/Screens/Account/account.dart';
import 'package:rohi_app/Screens/Notification/notification.dart';
import 'package:rohi_app/Screens/Wishlist/wishlist.dart';
import 'package:rohi_app/Screens/Home/homepage.dart';
import 'package:rohi_app/Screens/cart_page.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    HomePage(),
    Wishlist(),
    RohiNotify(),
    Account(),
    CartPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.black,
          selectedIconTheme: const IconThemeData(
            color: Colors.grey,
          ),
          unselectedIconTheme: const IconThemeData(
            color: Colors.black,
          ),
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.heart),
              label: 'Wishlist',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.bell),
              label: 'Notification',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.person),
              label: 'Account',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.cartShopping),
              label: 'Account',
            ),
          ]),
    );
  }
}
