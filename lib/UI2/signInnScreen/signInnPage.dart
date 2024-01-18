import 'package:e_commerce_2/UI/SignInScreen/signInController.dart';
import 'package:e_commerce_2/UI2/signInnScreen/signInnController.dart';
import 'package:e_commerce_2/widgets/build_widget.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';


class SignInn2Screen extends StatefulWidget {
  const SignInn2Screen({super.key});

  @override
  State<SignInn2Screen> createState() => _SignInn2ScreenState();
}


class _SignInn2ScreenState extends State<SignInn2Screen> {
  SignInn2Controller signInn2Controller = Get.put(SignInn2Controller());
  Map<String, dynamic>? uiConfig = {};

  @override
  void initState() {
    super.initState();
    apiCall();
  }

  apiCall() async {
    uiConfig = await signInn2Controller.loadSignInScreenUI();
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
