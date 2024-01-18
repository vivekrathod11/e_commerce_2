
import 'dart:convert';

import 'package:e_commerce_2/ConfigController/configController.dart';
import 'package:get/get.dart';





class Details3Controller extends GetxController {



  loadDetails3ScreenUI() {

    ConfigController configController = Get.put(ConfigController());

    final jsonString = '''
    
{
  "type": "scaffold",
  "backgroundColor": "#000000",
  "body": {
  "type": "singleChildScrollView",
  "child":  
   {
      "type": "container",
      "height": 800.0,
      "width": 500.0,
      "decoration": {
      "color": "primaryColor",
      "borderColor": "#00000000",
      "opacity": 1.0
        
      },
      "child": {
      "type": "padding",
      "top":0.0,
      "bottom":0.0,
      "left": 15.0,
      "right":15.0,
      "child": {
      "type": "column",
      "mainalignment": "spaceEvenly",
      "crossalignment": "start",
      "children": [
      
       {
             "type": "container",
             "height": 300.0,
             "width": 400.0,
              "decoration":{
                  "color":"#FFFFFF",
                  "opacity": 0.5,
                  "borderColor": "00000000",
                  "borderRadius":{
                     "topRight":25,
                     "bottomRight": 25,
                     "topLeft": 25,
                     "bottomLeft": 25
                }
              },
               
             "child": {
             "type": "pageView",
             "activeColor":"#C4C4C4",
             "children": [ 
             {
             "type": "container",
             "height": 50.0,
             "width": 50.0,
             "child": {
             "type": "image",
             "imageUrl": "https://i.dummyjson.com/data/products/1/thumbnail.jpg",
             "width": 200.0,
             "height": 200.0,
             "fit": "contain"
             },
              "decoration":{
                  "color":"#000000",
                  "opacity": 0.0,
                  "borderColor": "00000000",
                  "borderRadius":{
                     "topRight":25,
                     "bottomRight": 25,
                     "topLeft": 25,
                     "bottomLeft": 25
                }
              }  
             },
             
              {
             "type": "container",
             "height": 50.0,
             "width": 50.0,
             "child": {
              "type": "image",
             "imageUrl": "https://i.dummyjson.com/data/products/1/thumbnail.jpg",
             "width": 200.0,
             "height": 200.0,
             "fit": "contain"
             },
              "decoration":{
                  "color":"#000000",
                  "opacity": 0.0,
                  "borderColor": "00000000",
                  "borderRadius":{
                     "topRight":25,
                     "bottomRight": 25,
                     "topLeft": 25,
                     "bottomLeft": 25
                }
              }  
             } ,
              {
             "type": "container",
             "height": 50.0,
             "width": 50.0,
             "child": {
              "type": "image",
             "imageUrl": "https://i.dummyjson.com/data/products/72/3.webp",
             "width": 200.0,
             "height": 200.0,
             "fit": "contain"
             },
              "decoration":{
                  "color":"#000000",
                  "opacity": 0.0,
                  "borderColor": "00000000",
                  "borderRadius":{
                     "topRight":25,
                     "bottomRight": 25,
                     "topLeft": 25,
                     "bottomLeft": 25
                }
              }  
             }  
            ]
           }
          },
          {
            "type": "padding",
            "top": 0.0,
            "bottom": 0.0,
            "left": 0.0,
            "right": 0.0,
            "child": 
                {
                  "type": "text",
                  "label": "Nike men shoes",
                  "textColor": "#000000",
                  "fontSize": 18,
                  "fontWeight": "bold"
                }
              },
           
           {
            "type": "padding",
            "top": 0.0,
            "bottom": 0.0,
            "left": 0.0,
            "right": 0.0,
            "child":   {
             
             "type": "text",
                  "label": "The Nike Free Metcon 3 offers a combination of Nike Free flexibility in the forefoot and Metcon stability in the heel for optimal training performance.",
                  "textColor": "#9CA0AF",
                  "fontSize": 12,
                  "fontWeight": "normal"
            
           }
         },
                
                
            {
              "type": "text",
              "label": "\$290.0",
              "textColor": "#000000",
              "fontSize": 24,
              "fontWeight": "bold"
            },
                
           {
            "type": "padding",
             "top":0.0,
            "bottom":0.0,
            "left": 15.0,
            "right": 0.0,
            "child": {
           "type": "buttonContainer",
           "height": 50.0,
           "width":  400.0,
           "child": {
            "type": "padding",
             "top":0.0,
            "bottom":0.0,
            "left":10.0,
            "right": 10.0,
            "child": {
             "type": "row",
             "mainalignment": "spaceBetween",
             "crossalignment": "start",
             "children": [
    
             {
              "type": "padding",
             "top": 15.0,
            "bottom":0.0,
            "left":0.0,
            "right": 10.0,
            "child":  {
             "type": "text",
            "label": "Add To Cart",
            "textColor": "#FFFFFF",
            "fontSize": 14,
            "fontWeight": "Bold"   
             }
           },
           
           
           {
             "type": "padding",
             "top": 10.0,
             "bottom":0.0,
             "left":0.0,
             "right": 0.0,
             "child":   {
             "type": "imageIcon",
             "image": "assets/arrowlotte.png",
             "size": 20.0,
             "color": "#FFFFFF"
             }
           },
           
           
              {
                "type": "padding",
                "top": 3.0,
                "bottom": 0.0,
                "left": 60.0,
                "right": 0.0,
                "child": {
                  "type": "container",
                  "height": 40.0,
                  "width": 40.0,
                  "child": {
                    "type": "center",
                    "child": {
                      "type": "iconButton",
                      "child": {
                        "type": "icon",
                        "iconData": "cart2",
                        "color": "#2D2C3980",
                        "size": 16.0
                      },
                      "tag": ""
                    }
                  },
                  "decoration": {
                    "color": "#FFFFFF",
                    "opacity": 1.0,
                    "borderRadius": {
                      "topRight": 25,
                      "bottomRight": 25,
                      "topLeft": 25,
                      "bottomLeft": 25
                    }
                  }
                 }
               }
             ]
            }
           },
           
           "tag": "goToCart3",
               "decoration":{
                  "color":"buttonColor",
                  "opacity": 1.0,
                  "borderColor": "00000000",
                  "borderRadius":{
                     "topRight":25,
                     "bottomRight": 25,
                     "topLeft": 25,
                     "bottomLeft": 25
                 }
               }
              }
            }
          ]               
        }
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