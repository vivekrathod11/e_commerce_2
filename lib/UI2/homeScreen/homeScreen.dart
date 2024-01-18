import 'package:e_commerce_2/UI2/homeScreen/homeController.dart';
import 'package:e_commerce_2/json_data/json_controller.dart';
import 'package:e_commerce_2/widgets/build_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';




class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}


class _HomeScreen2State extends State<HomeScreen2> {
  JsonController jsonController = new JsonController();
  Home2Controller home2controller = Get.put(Home2Controller());
  Map<String, dynamic>? uiConfig = {};

  @override
  void initState() {
    super.initState();
    apiCall();
  }

  apiCall() async {
    uiConfig = await home2controller.loadHome2ScreenUI();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // Parse the JSON and build the UI accordingly
    if(uiConfig != null){
      if (uiConfig!["type"] == "scaffold") {
        return Scaffold(
          extendBodyBehindAppBar: true,
          // appBar: AppBar(
          //   toolbarHeight: 50,
          //   excludeHeaderSemantics: true,
          //   toolbarOpacity: 1.0,
          //   toolbarTextStyle: TextStyle(
          //     color: Colors.transparent
          //   ),
          //   scrolledUnderElevation: 0.0,
          //     automaticallyImplyLeading: false,
          //     foregroundColor: Colors.red,
          //     surfaceTintColor: Colors.white,
          //     forceMaterialTransparency: false,
          //     backgroundColor: Colors.transparent.withOpacity(0.1),
          //     title: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Container(
          //           decoration: BoxDecoration(
          //               color: Colors.white,
          //               borderRadius: BorderRadius.circular(20)
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
          //           child: Icon(Icons.notifications,size: 18,color: Colors.black,),
          //         ),
          //       ],
          //     )
          // ),
          drawerEnableOpenDragGesture: false,
          drawer: Drawer(),
          backgroundColor: Color(int.parse(uiConfig!["backgroundColor"].substring(1, 7), radix: 16) + 0xFF000000),
          body:  BuildWidget(uiConfig!["body"]),
          // CustomScrollView(
          //   slivers: <Widget>[
          //     SliverAppBar(
          //         actions: <Widget>[
          //           Icon(Icons.person, size: 40,)
          //         ],
          //         title: Text("SliverAppBar Example"),
          //         leading: Icon(Icons.menu),
          //         backgroundColor: Colors.transparent,
          //         expandedHeight: 100.0,
          //         floating: true,
          //         pinned: true
          //     ),
          //
          //
          //
          //   ],
          // ),
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
