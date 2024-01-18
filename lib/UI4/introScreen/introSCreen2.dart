import 'package:e_commerce_2/UI2/signInnScreen/signInnController.dart';
import 'package:e_commerce_2/UI4/introScreen/introController2.dart';
import 'package:e_commerce_2/Ui3/IntroScreen/introController.dart';
import 'package:e_commerce_2/widgets/build_widget.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';


class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}


class _IntroScreenState extends State<IntroScreen> {
  Intro2Controller intro2Controller = Get.put(Intro2Controller());
  Map<String, dynamic>? uiConfig = {};

  @override
  void initState() {
    super.initState();
    apiCall();
  }

  apiCall() async {
    uiConfig = await intro2Controller.loadIntro2ScreenUI();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // Parse the JSON and build the UI accordingly
    if(uiConfig != null){
      if (uiConfig!["type"] == "scaffold") {
        return Scaffold(
          backgroundColor: Color(int.parse(uiConfig!["backgroundColor"].substring(1, 7), radix: 16) + 0xFF000000),
          body: BuildWidget(uiConfig!["body"]),
        );
      } else {
        return Scaffold(backgroundColor: Colors.white,);
      }
    }else {
      return Scaffold(backgroundColor: Colors.white,);
    }
  }
}
