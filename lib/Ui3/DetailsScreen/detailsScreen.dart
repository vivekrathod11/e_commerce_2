import 'package:e_commerce_2/ConfigController/configController.dart';
import 'package:e_commerce_2/UI2/signInnScreen/signInnController.dart';
import 'package:e_commerce_2/Ui3/DetailsScreen/detailsController.dart';
import 'package:e_commerce_2/widgets/build_widget.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';


class Details3Screen extends StatefulWidget {
  const Details3Screen({super.key});

  @override
  State<Details3Screen> createState() => _Details3ScreenState();
}


class _Details3ScreenState extends State<Details3Screen> {
  Details3Controller details3controller = Get.put(Details3Controller());
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
    uiConfig = await details3controller.loadDetails3ScreenUI();
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
             title:  Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Container(
                   decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(20)
                   ),
                   height: 40,width: 40,
                   child: Padding(
                     padding: const EdgeInsets.only(left: 6.0),
                     child: Icon(Icons.arrow_back_ios,size: 16,color: Color(0xff2D2C3980).withOpacity(0.5),),
                   ),
                 ),
                 Container(
                   decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(20)
                   ),
                   height: 40,width: 40,
                   child: Icon(Icons.shopping_cart,size: 18,color: Color(0xff2D2C3980).withOpacity(0.5),),
                 ),
               ],
             ),
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
