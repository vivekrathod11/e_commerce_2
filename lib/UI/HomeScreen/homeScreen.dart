import 'package:e_commerce_2/UI/HomeScreen/homeController.dart';
import 'package:e_commerce_2/json_data/json_controller.dart';
import 'package:e_commerce_2/widgets/build_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
  JsonController jsonController = new JsonController();
  HomeController homeController = Get.put(HomeController());
  Map<String, dynamic>? uiConfig = {};

  @override
  void initState() {
    super.initState();
    apiCall();
  }

  apiCall() async {
    uiConfig = await homeController.loadHomeScreenUI();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // Parse the JSON and build the UI accordingly
    if(uiConfig != null){
      if (uiConfig!["type"] == "scaffold") {
        return Scaffold(
          extendBody: true,
          appBar: AppBar(
            toolbarHeight: 50,
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
                    child: Image(image: AssetImage("assets/menu.png",),color: Colors.black,),
                  ),
                  Image.asset("assets/logo.png",color: Colors.black,),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    height: 40,width: 40,
                    child: Icon(Icons.notifications,size: 18,color: Colors.black),
                  ),
                ],
              )
            ),
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
