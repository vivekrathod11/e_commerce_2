import 'package:e_commerce_2/ConfigController/configController.dart';
import 'package:e_commerce_2/UI/SignInScreen/signInController.dart';
import 'package:e_commerce_2/UI2/signInnScreen/signInnController.dart';
import 'package:e_commerce_2/Ui3/CartSCreen/cartController.dart';
import 'package:e_commerce_2/widgets/build_widget.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';


class Cart3Screen extends StatefulWidget {
  const Cart3Screen({super.key});

  @override
  State<Cart3Screen> createState() => _Cart3ScreenState();
}


class _Cart3ScreenState extends State<Cart3Screen> {
  Cart3Controller cart3controller = Get.put(Cart3Controller());
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
    uiConfig = await cart3controller.loadCart3ScreenUI();
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
              backgroundColor: Color(0xffE9EFF4),
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
                 Padding(
                   padding: const EdgeInsets.only(right: 180.0),
                   child: Text("My Cart",
                   style: TextStyle(
                     fontSize: 18
                   ),),
                 ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    height: 40,width: 40,
                    child: Icon(Icons.notifications,size: 18,color: Color(0xff2D2C3980).withOpacity(0.2)),
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
