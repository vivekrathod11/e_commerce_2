import 'package:e_commerce_2/Ui3/CartSCreen/cartScreen.dart';
import 'package:e_commerce_2/Ui3/DetailsScreen/detailsScreen.dart';
import 'package:e_commerce_2/Ui3/HomeScreen/homeScreen.dart';
import 'package:e_commerce_2/Ui3/SignInScreen/signInScreen.dart';
import 'package:e_commerce_2/utils/customIcons.dart';
import 'package:flutter/material.dart';
import 'package:fancy_bottom_navigation_2/fancy_bottom_navigation.dart';



class NavBarClass extends StatefulWidget {
  const NavBarClass({super.key});

  @override
  State<NavBarClass> createState() => _NavBarClassState();
}

class _NavBarClassState extends State<NavBarClass> {
  int currentPage = 0;

  final List<Widget> _screens = [
    HomeScreen3(),
    Cart3Screen(),
    Details3Screen(),
    SignIn3Screen(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _screens[currentPage],
      bottomNavigationBar: FancyBottomNavigation(
        barBackgroundColor: Color(0xffFFFFFF).withOpacity(0.29),
        initialSelection: currentPage,
        circleColor: Color(0xffAA7EEF),
        activeIconColor: Colors.white,
        inactiveIconColor:Colors.grey,
        textColor: Color(0xffAA7EEF),
        tabs: [
          TabData(iconData: Icons.home, title: "Home"),
          TabData(iconData: MyFlutterApp.cart, title: "Cart"),
          TabData(iconData: MyFlutterApp.heart, title: "Favorite"),
          TabData(iconData: Icons.person, title: "Profile")
        ],
        onTabChangedListener: (position) {
          setState(() {
            currentPage = position;
          });
        },
      )



    );
  }
}