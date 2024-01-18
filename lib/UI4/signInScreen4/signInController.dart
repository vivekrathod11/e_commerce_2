
import 'dart:convert';

import 'package:get/get.dart';





class SignIn4Controller extends GetxController {



  loadSignIn4ScreenUI() {
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
      "color": "#E6D6FF",
      "opacity": 1.0
        
      },
      "child": {
      "type": "column",
      "mainalignment": "spaceEvenly",
      "crossalignment": "center",
      "children": [
      
      {
      "type": "sizedBox",
      "height": 50.0,
      "width": 0.0
      },
      
      {
        "type": "imageAsset",
        "imageUrl": "assets/shopIcon.png",
        "width": 112.0,
        "height": 58.0,
        "fit": "contain"
       }
        ]               
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