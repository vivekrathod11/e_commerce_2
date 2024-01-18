import 'package:e_commerce_2/UI2/cartScreen/cartController.dart';
import 'package:e_commerce_2/widgets/build_widget.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';



class Cart2Screen extends StatefulWidget {
  const Cart2Screen({super.key});

  @override
  State<Cart2Screen> createState() => _Cart2ScreenState();
}


class _Cart2ScreenState extends State<Cart2Screen> {
  Cart2Controller cart2Controller = Get.put(Cart2Controller());
  Map<String, dynamic>? uiConfig = {};

  @override
  void initState() {
    super.initState();
    apiCall();
  }

  apiCall() async {
    uiConfig = await cart2Controller.loadCart2ScreenUI();
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
                  Text("My Cart",
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
