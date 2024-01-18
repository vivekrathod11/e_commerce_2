import 'package:e_commerce_2/ConfigController/configController.dart';
import 'package:e_commerce_2/Ui3/HomeScreen/homeController.dart';
import 'package:e_commerce_2/Ui3/IntroScreen/introController.dart';
import 'package:e_commerce_2/Ui3/NavBarClass.dart';
import 'package:e_commerce_2/widgets/build_widget.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';


class HomeScreen3 extends StatefulWidget {
  const HomeScreen3({super.key});

  @override
  State<HomeScreen3> createState() => _HomeScreen3State();
}


class _HomeScreen3State extends State<HomeScreen3> {
  Home3Controller home3controller = Get.put(Home3Controller());
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
    uiConfig = await home3controller.loadHome3ScreenUI();
    setState(() {
      configController.appColors();
    });
  }

  @override
  Widget build(BuildContext context) {
    // Parse the JSON and build the UI accordingly
    if(uiConfig != null){
      if (uiConfig!["type"] == "scaffold") {
        return Scaffold(
        //  bottomNavigationBar: NavBarClass(),
        //   appBar: AppBar(
        //     automaticallyImplyLeading: false,
        //     backgroundColor: Color(0xffE9EFF4),
        //     title: Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: [
        //         Container(
        //           decoration: BoxDecoration(
        //             color: Colors.white,
        //             borderRadius: BorderRadius.circular(20)
        //           ),
        //           height: 40,width: 40,
        //           child: Image(image: AssetImage("assets/menu.png",),),
        //         ),
        //         Image.asset("assets/nikeLogo.png",color: Colors.white,),
        //         Container(
        //           decoration: BoxDecoration(
        //               color: Colors.white,
        //               borderRadius: BorderRadius.circular(20)
        //           ),
        //           height: 40,width: 40,
        //           child: Icon(Icons.notifications,size: 18,color: Color(0xff2D2C3980).withOpacity(0.5),),
        //         ),
        //       ],
        //     )
        //   ),
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
