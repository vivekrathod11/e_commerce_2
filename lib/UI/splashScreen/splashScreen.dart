import 'package:e_commerce_2/UI/SignInScreen/signInPage.dart';
import 'package:e_commerce_2/UI/splashScreen/splashController.dart';
import 'package:e_commerce_2/json_data/json_controller.dart';
import 'package:e_commerce_2/widgets/build_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {
  JsonController jsonController = new JsonController();
  SplashController splashController = Get.put(SplashController());
  Map<String, dynamic>? uiConfig = {};

  @override
  void initState() {
    super.initState();
    uiConfig =  splashController.loadSplashScreenUI();
    Future.delayed(Duration(seconds: 2),(){
      setState(() {
        Get.to(() => SignInScreen());
      });
    });
  }






  @override
  Widget build(BuildContext context) {
    // Parse the JSON and build the UI accordingly
    if(uiConfig != null){
      if (uiConfig!["type"] == "scaffold") {
        return Scaffold(
          drawerEnableOpenDragGesture: false,
          drawer: Drawer(),
          backgroundColor: Color(int.parse(uiConfig!["backgroundColor"].substring(1, 7), radix: 16) + 0xFF000000),
          body: BuildWidget(uiConfig!["body"]),
          // bottomNavigationBar: CustomNavigationBar(),
        );
      } else {
        return Scaffold(backgroundColor: Colors.white,);
      }
    }else {
      return Scaffold(backgroundColor: Colors.white,);
    }
  }
}
