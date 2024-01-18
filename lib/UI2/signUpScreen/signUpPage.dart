import 'package:e_commerce_2/UI2/signUpScreen/signUpController.dart';
import 'package:e_commerce_2/widgets/build_widget.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';





class SignUp2Screen extends StatefulWidget {
  const SignUp2Screen({super.key});

  @override
  State<SignUp2Screen> createState() => _SignUp2ScreenState();
}


class _SignUp2ScreenState extends State<SignUp2Screen> {
  SignUp2Controller signUp2Controller = Get.put(SignUp2Controller());
  Map<String, dynamic>? uiConfig = {};

  @override
  void initState() {
    super.initState();
    apiCall();
  }

  apiCall() async {
    uiConfig = await signUp2Controller.loadSignUpScreenUI();
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
