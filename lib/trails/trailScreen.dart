import 'package:e_commerce_2/UI/SignInScreen/signInController.dart';
import 'package:e_commerce_2/UI2/signInnScreen/signInnController.dart';
import 'package:e_commerce_2/Ui3/CartSCreen/cartController.dart';
import 'package:e_commerce_2/trails/trailController.dart';
import 'package:e_commerce_2/widgets/build_widget.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';


class TrailScreen extends StatefulWidget {
  const TrailScreen({super.key});

  @override
  State<TrailScreen> createState() => _TrailScreenState();

}

class _TrailScreenState extends State<TrailScreen> {
  TrailController trailController = Get.put(TrailController());
  Map<String, dynamic>? uiConfig = {};

  @override
  void initState() {
    super.initState();
    uiConfig =  trailController.loadTrailScreenUI();
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
