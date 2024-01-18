import 'package:e_commerce_2/UI4/signInScreen4/signInController.dart';
import 'package:e_commerce_2/Ui3/SignInScreen/signInController.dart';
import 'package:e_commerce_2/Ui3/SignUpScreen/sihnUpController.dart';
import 'package:e_commerce_2/widgets/build_widget.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';




class SignIn4Screen extends StatefulWidget {
  const SignIn4Screen({super.key});

  @override
  State<SignIn4Screen> createState() => _SignIn4ScreenState();
}


class _SignIn4ScreenState extends State<SignIn4Screen> {
  SignIn4Controller signIn4Controller = Get.put(SignIn4Controller());
  Map<String, dynamic>? uiConfig = {};

  @override
  void initState() {
    super.initState();
    apiCall();
  }

  apiCall() async {
    uiConfig = await signIn4Controller.loadSignIn4ScreenUI();
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
