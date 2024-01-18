import 'package:e_commerce_2/UI/DetailsScreen/detailsController.dart';
import 'package:e_commerce_2/UI/SignInScreen/signInController.dart';
import 'package:e_commerce_2/UI2/detailsScreen/detailsController.dart';
import 'package:e_commerce_2/widgets/build_widget.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';


class Details2Screen extends StatefulWidget {
  const Details2Screen({super.key});

  @override
  State<Details2Screen> createState() => _Details2ScreenState();
}


class _Details2ScreenState extends State<Details2Screen> {
  Details2Controller details2Controller = Get.put(Details2Controller());
  Map<String, dynamic>? uiConfig = {};

  @override
  void initState() {
    super.initState();
    apiCall();
  }

  apiCall() async {
    uiConfig = await details2Controller.loadDetails2ScreenUI();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // Parse the JSON and build the UI accordingly
    if(uiConfig != null){
      if (uiConfig!["type"] == "scaffold") {
        return Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.transparent,
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
                        color: Colors.white
                    ),),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    height: 40,width: 40,
                    child: Icon(Icons.notifications,size: 18,color: Colors.white,),
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
