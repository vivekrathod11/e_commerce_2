import 'package:e_commerce_2/UI/DetailsScreen/detailsController.dart';
import 'package:e_commerce_2/UI/SignInScreen/signInController.dart';
import 'package:e_commerce_2/widgets/build_widget.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';


class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}


class _DetailsScreenState extends State<DetailsScreen> {
  DetailsController detailsController = Get.put(DetailsController());
  Map<String, dynamic>? uiConfig = {};

  @override
  void initState() {
    super.initState();
    apiCall();
  }

  apiCall() async {
    uiConfig = await detailsController.loadDetailsScreenUI();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // Parse the JSON and build the UI accordingly
    if(uiConfig != null){
      if (uiConfig!["type"] == "scaffold") {
        return Scaffold(
          appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Color(0xffFFFFFF),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      height: 40,width: 40,
                      child: Image(image: AssetImage("assets/menu.png",),)
                  ),
                  Text("Nike men shoes",
                    style: TextStyle(
                        fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    height: 40,width: 40,
                    child: Icon(Icons.notifications,size: 18,color: Colors.black,),
                  ),
                ],
              )
          ),
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
