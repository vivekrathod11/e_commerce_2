import 'package:e_commerce_2/ConfigController/configController.dart';
import 'package:e_commerce_2/Ui3/SignInScreen/signInController.dart';
import 'package:e_commerce_2/Ui3/SignUpScreen/sihnUpController.dart';
import 'package:e_commerce_2/widgets/build_widget.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';


class SignUp3Screen extends StatefulWidget {
  const SignUp3Screen({super.key});

  @override
  State<SignUp3Screen> createState() => _SignUp3ScreenState();
}

class _SignUp3ScreenState extends State<SignUp3Screen> {
  SignUp3Controller signUp3Controller = Get.put(SignUp3Controller());
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
    uiConfig = await signUp3Controller.loadSignUp3ScreenUI();
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
