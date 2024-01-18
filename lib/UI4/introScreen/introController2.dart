import 'dart:convert';

import 'package:get/get.dart';





class Intro2Controller extends GetxController {



  loadIntro2ScreenUI() {
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
      "decoration":{
        "imageUrl":"assets/BG.png",
        "color":"#000000",
        "opacity": 0.1,
        "borderRadius":{
        "topRight":0,
        "bottomRight":0,
        "topLeft":0,
        "bottomLeft":0
       }
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
        "imageUrl": "assets/nikeWh.png",
        "width": 200.0,
        "height": 120.0,
        "fit": "contain"
       },
       
       {
      "type": "sizedBox",
      "height": 100.0,
      "width": 0.0
      },
      
      {
      "type": "container",
       "width": 400.0,
       "height": 60.0,
        "decoration":{
        "color":"#00000000",
        "borderColor":"#00000000",
        "opacity": 0.0,
        "borderRadius":{
        "topRight":0,
        "bottomRight":0,
        "topLeft":0,
        "bottomLeft":0
       }
     },
      "child": {
      "type": "column",
       "mainalignment": "spaceEvenly",
      "crossalignment": "center",
      "children": [
 {
      "type": "padding",
     "top":0.0,
      "bottom":0.0,
      "left":0.0,
      "right": 0.0,
      "child":  {
              "type": "text",
            "label": "Start finding your Verion the best fashion Style",
            "textColor": "#FFFFFF",
            "fontSize": 16,
            "fontWeight": "Bold"   
            }
      },
      
      {
      "type": "divider",
      "height": 5.0,
      "thickness": 5.0,
      "endIndent": 160.0,
      "indent": 160.0,
      "color": "#FFFFFF"
      }
         ]
       }
      },
     
      
       {
            "type": "padding",
            "top":0.0,
            "bottom":0.0,
            "left":30.0,
            "right": 30.0,
            "child": {
            "type": "buttonContainer",
            "height": 50.0,
            "width": 50.0,
            "child": {
            "type": "padding",
            "top":15.0,
            "bottom":0.0,
            "left":0.0,
            "right": 0.0,
            "child": {
            "type": "text",
            "label": "Shop",
            "textColor": "#FFFFFF",
            "fontSize": 14,
            "fontWeight": "Bold"   
            }
           },
           "tag": "goTosignUp3",
                   "decoration":{
                    "color":"#AA7EEF",
                    "opacity": 1.0,
                    "borderColor": "00000000",
                    "borderRadius":{
                     "topRight":50,
                     "bottomRight": 50,
                     "topLeft": 50,
                     "bottomLeft": 50
                }
              }
             }
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