import 'dart:convert';

import 'package:get/get.dart';





class DetailsController extends GetxController {



  loadDetailsScreenUI() {
    final jsonString = '''
    

 
 {
  "type": "scaffold",
  "backgroundColor": "#00000000",
  "body": 
      {
      "type": "container",
      "height": 800.0,
      "width": 500.0,
      "decoration":{
        "imageUrl":"assets/back2.png",
        "color":"#00000000",
        "borderRadius":{
        "topRight":0,
        "bottomRight":0,
        "topLeft":0,
        "bottomLeft":0
       }
     },
    "child": {
    "type": "singleChildScrollView",
    "child": {
    "type": "column",
    "mainalignment": "spaceBetween",
    "crossalignment": "start",
    "children": [
    
    {
        "type": "sizedBox",
        "height": 90.0,
        "width": 0.0
    },
        
    
            
        {
         "type": "stickyHeader",
         "header": {
         "type" :"container",
         "height": 60.0,
         "width": 500.0,
         "decoration":{
         "color":"#00000000",
           "opacity": 0.0,
           "borderColor": "#00000000",
              "borderRadius":{
                 "topRight":20,
                 "bottomRight":20,
                 "topLeft":20,
                 "bottomLeft":20
            }
         },
         "child": {
          "type": "row",
           "mainalignment": "spaceEvenly",
           "crossalignment": "start",
          "children": [
        
        {
            "type": "imageAsset",
            "imageUrl": "assets/nike3.png",
            "width": 200.0,
            "height": 200.0,
            "fit": "cover"
         },
        {
         "type": "container",
         "height": 40.0,
         "width": 40.0,
          "decoration":{
           "color":"#FFFFFF",
           "opacity": 1.0,
           "borderColor": "#00000000",
           "borderRadius":{
             "topRight":20,
             "bottomRight":20,
             "topLeft":20,
             "bottomLeft":20
            }
         }, 
          "child": 
           {
          "type": "imageIcon",
          "image": "assets/menu.png",
          "size": 16.0,
          "color": "#000000"   
         }

        }
   
          ]
        },
         "content": {}
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