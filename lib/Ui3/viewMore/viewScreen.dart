import 'package:e_commerce_2/Ui3/SignInScreen/signInController.dart';
import 'package:e_commerce_2/Ui3/SignUpScreen/sihnUpController.dart';
import 'package:e_commerce_2/Ui3/viewMore/viewController.dart';
import 'package:e_commerce_2/widgets/build_widget.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';


class ViewMoreScreen extends StatefulWidget {
  final int itemId;
  const ViewMoreScreen({super.key, required this.itemId});

  @override
  State<ViewMoreScreen> createState() => _ViewMoreScreenState();
}


class _ViewMoreScreenState extends State<ViewMoreScreen> {
  ViewController viewController = Get.put(ViewController());
  Map<String, dynamic>? uiConfig = {};

  @override
  void initState() {
    super.initState();
    apiCall();
  }

  apiCall() async {
    uiConfig = await viewController.loadViewScreenUI();
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
