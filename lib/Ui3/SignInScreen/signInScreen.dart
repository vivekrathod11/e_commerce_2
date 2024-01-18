import 'package:e_commerce_2/ConfigController/configController.dart';
import 'package:e_commerce_2/Ui3/SignInScreen/signInController.dart';
import 'package:e_commerce_2/Ui3/SignUpScreen/sihnUpController.dart';
import 'package:e_commerce_2/widgets/build_widget.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';


class SignIn3Screen extends StatefulWidget {
  const SignIn3Screen({super.key});

  @override
  State<SignIn3Screen> createState() => _SignIn3ScreenState();
}


class _SignIn3ScreenState extends State<SignIn3Screen> {
  SignIn3Controller signIn3Controller = Get.put(SignIn3Controller());
  ConfigController configController = Get.put(ConfigController());

  Map<String, dynamic>? uiConfig = {};

  @override
  void initState() {
    super.initState();
    colorCall();
  }

  colorCall()async {
    await configController.appColors();
    apiCall();
  }

  apiCall() async {
    uiConfig = await signIn3Controller.loadSignIn3ScreenUI();
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
