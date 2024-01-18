import 'dart:convert';

import 'package:get/get.dart';





class TestController extends GetxController {






  loadTestScreenUI() {

    final jsonString = '''

  {
      "type": "scaffold",
      "backgroundColor": "#00000000",
      "body": 
      {
      "type": "container",
      "height": 800.0,
      "width": 500.0,
       "child" : 
       {
        "type": "stickyContainer",
        "children" : {
        "type": "icon",
        "iconData": "star_border",
        "size": 20.0,
        "color": "#9CA0AF"
        },
        "child": {
       
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