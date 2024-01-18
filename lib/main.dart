import 'dart:ffi';

import 'package:e_commerce_2/UI/CartScreen/cartScreen.dart';
import 'package:e_commerce_2/UI/DetailsScreen/detailsScreen.dart';
import 'package:e_commerce_2/UI/HomeScreen/homeScreen.dart';
import 'package:e_commerce_2/UI/SignInScreen/signInPage.dart';
import 'package:e_commerce_2/UI/SignUpScreen/signUpScreen.dart';
import 'package:e_commerce_2/UI/splashScreen/splashScreen.dart';
import 'package:e_commerce_2/UI2/Test/testScreen.dart';
import 'package:e_commerce_2/UI2/cartScreen/cartController.dart';
import 'package:e_commerce_2/UI2/cartScreen/cartScreen.dart';
import 'package:e_commerce_2/UI2/detailsScreen/detailsScreen.dart';
import 'package:e_commerce_2/UI2/homeScreen/homeScreen.dart';
import 'package:e_commerce_2/UI2/signInnScreen/signInnPage.dart';
import 'package:e_commerce_2/UI2/signUpScreen/signUpPage.dart';
import 'package:e_commerce_2/UI4/signInScreen4/signInScreen.dart';
import 'package:e_commerce_2/Ui3/CartSCreen/cartScreen.dart';
import 'package:e_commerce_2/Ui3/DetailsScreen/detailsScreen.dart';
import 'package:e_commerce_2/Ui3/HomeScreen/homeScreen.dart';
import 'package:e_commerce_2/Ui3/IntroScreen/introScreen.dart';
import 'package:e_commerce_2/Ui3/NavBarClass.dart';
import 'package:e_commerce_2/Ui3/SignInScreen/signInScreen.dart';
import 'package:e_commerce_2/Ui3/SignUpScreen/signUpSCreen.dart';
import 'package:e_commerce_2/trails/trailScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'UI2/Test/testScreend.dart';




void main() {

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) {
  });

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
    statusBarColor: Colors.transparent,
    // Color for Android
    // statusBarBrightness: Brightness.dark // Dark == white status bar -- for IOS.
  ));
  runApp(Rappid());
}




class Rappid extends StatefulWidget {
  const Rappid({super.key});

  @override
  State<Rappid> createState() => _RappidState();
}

class _RappidState extends State<Rappid> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen3()
    );
  }
}
