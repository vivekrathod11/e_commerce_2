import 'package:e_commerce_2/Ui3/NavBarClass.dart';
import 'package:flutter/material.dart';






class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: NavBarClass(),
    );
  }
}
