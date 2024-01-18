import 'dart:convert';

import 'package:get/get.dart';





class SplashController extends GetxController {



  loadSplashScreenUI() {
    final jsonString = '''
    
{
  "type": "scaffold",
  "backgroundColor": "#000000",
  "body": {
    "type": "singleChildScrollView",
    "child": {
      "type": "container",
      "height": 800.0,
      "width": 500.0,
      "decoration": {
        "color": "#000000"
      },
      "child": {
               
                 "type": "imageAsset",
                "imageUrl": "assets/splash.png",
                "width": 500.0,
                "height": 800.0,
                "fit": "cover"
               
               
            
      }
    }
  }
}

''';
    final parsedJson = json.decode(jsonString);
    return parsedJson;
  }












  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }
  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}