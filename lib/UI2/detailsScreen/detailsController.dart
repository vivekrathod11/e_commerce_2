import 'dart:convert';

import 'package:get/get.dart';





class Details2Controller extends GetxController {



  loadDetails2ScreenUI() {
    final jsonString = '''
    

    
    
{
  "type": "scaffold",
  "backgroundColor": "#00000000",
  "body": {
    "type": "singleChildScrollView",
    "child": {
     "type": "stack",
     "children": [
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
      "type": "column",
      "mainalignment": "spaceBetween",
      "crossalignment": "center",
      "children": [
     
          {
          "type": "sizedBox",
          "height": 80.0,
          "width": 0.0
          },
        {
        "type":"container",
         "height": 300.0,
           "width": 350.0,
           "decoration": {
                    "color": "#FFFFFF",
                    "opacity": 0.1,
                    "borderColor": "00000000",
                    "borderRadius": {
                      "topRight": 20,
                      "bottomRight": 20,
                      "topLeft": 20,
                      "bottomLeft": 20
                    }
                   },
            "child":   {
          "type": "pageViewBuilder",
          "itemCount": 3,
          "scrollDirection": "horizontal",
          "activeColor": "#C4C4C4",
          "children": [
          
          {
           "type": "container",
           "height": 300.0,
           "width": 500.0,
            "decoration": {
                    "color": "#00000000",
                    "borderColor": "00000000",
                    "opacity": 0.0,
                    "borderRadius": {
                      "topRight": 5,
                      "bottomRight": 5,
                      "topLeft": 5,
                      "bottomLeft": 5
                    }
                   },
           "child": 
          {
           "type": "column",
          "mainalignment": "start",
          "crossalignment": "center",
          "children": [
          
          {
           "type": "container",
           "height": 200.0,
           "width": 300.0,
           "child": {
             "type": "imageAsset",
            "imageUrl": "assets/nike3.png",
            "width": 200.0,
            "height": 200.0,
            "fit": "cover"
           },
            "decoration": {
                    "color": "#00000000",
                    "borderColor": "00000000",
                    "opacity": 0.0,
                    "borderRadius": {
                      "topRight": 5,
                      "bottomRight": 5,
                      "topLeft": 5,
                      "bottomLeft": 5
                    }
                   }
                 },
                 
               {
                "type": "imageAsset",
                "imageUrl": "assets/ShoeS.png",
                "width": 370.0,
                "height": 70.0,
                "fit": "fitHeight"
               }   
              ]
             } 
           }
          ]
         }
        },
       {
          "type": "padding",
            "top": 0.0,
            "bottom": 0.0,
            "left": 20.0,
            "right": 0.0,
            "child": {
            "type": "row",
            "mainalignment": "start",
            "crossalignment": "start",
            "children": [
           
           {
           "type": "column",
            "mainalignment": "start",
           "crossalignment": "start",
           "children": [
            {
            "type": "padding",
            "top": 0.0,
            "bottom": 0.0,
            "left": 0.0,
            "right": 0.0,
            "child": 
                {
                  "type": "text",
                  "label": "Nike Air Max 260",
                  "textColor": "#FFFFFF",
                  "fontSize": 20,
                  "fontWeight": "bold"
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
                  "label": "men shoes",
                  "textColor": "#9CA0AF",
                  "fontSize": 14,
                  "fontWeight": "bold"
                }
              }
             ]
           },
           {
           "type": "sizedBox",
           "height": 0.0,
           "width": 100.0
           },
            {
                "type": "container",
                "height": 40.0,
                "width": 40.0,
                "decoration": {
                "color": "#00000000",
                "opacity": 0.0,
                "borderColor": "#00000000"
              },
                "child": {
                "type": "row",
                 "mainalignment": "start",
                "crossalignment": "start",
                "children": [
                {
                "type": "icon",
                "iconData": "star_border",
                "size": 20.0,
                "color": "#9CA0AF"
                },
                {
                "type": "padding",
                 "top": 3.0,
                "bottom": 0.0,
                "left": 0.0,
                "right": 0.0,
                "child": {
                  "type": "text",
                  "label": "4.8",
                  "textColor": "#9CA0AF",
                  "fontSize": 12,
                  "fontWeight": "normal"
                }
                }
               ]
              }
             },
               {
                 "type": "sizedBox",
                 "height": 0.0,
                 "width": 10.0
                 },
              {
                "type": "icon",
                "iconData": "comment",
                "size": 20.0,
                "color": "#9CA0AF"
                },
                  {
                 "type": "sizedBox",
                 "height": 0.0,
                 "width": 10.0
                 },
                 {
                "type": "icon",
                "iconData": "favorite_border",
                "size": 20.0,
                "color": "#9CA0AF"
                }    
              ]
            }
          },
           
           
         
              
           {
            "type": "padding",
            "top": 0.0,
            "bottom": 0.0,
            "left": 20.0,
            "right": 30.0,
            "child":   {
             
             "type": "text",
                  "label": "The Nike Free Metcon 3 offers a combination of Nike Free flexibility in the forefoot and Metcon stability in the heel for optimal training performance.",
                  "textColor": "#9CA0AF",
                  "fontSize": 12,
                  "fontWeight": "normal"
            
           }
         },
         
         
         
         {
         "type": "row",
          "mainalignment": "start",
          "crossalignment": "start",
         "children": [
          {
                "type": "padding",
                 "top": 0.0,
                "bottom": 0.0,
                "left": 20.0,
                "right": 0.0,
                "child": {
                  "type": "text",
                  "label": "Size :",
                  "textColor": "#FFFFFF",
                  "fontSize": 12,
                  "fontWeight": "normal"
                }
              },
              {
                "type": "padding",
                 "top": 0.0,
                "bottom": 0.0,
                "left": 10.0,
                "right": 0.0,
                "child": {
                  "type": "text",
                  "label": "EU",
                  "textColor": "#9CA0AF",
                  "fontSize": 12,
                  "fontWeight": "normal"
                }
              },
               {
                "type": "padding",
                 "top": 0.0,
                "bottom": 0.0,
                "left": 10.0,
                "right": 0.0,
                "child": {
                  "type": "text",
                  "label": "UK",
                  "textColor": "#FFFFFF",
                  "fontSize": 12,
                  "fontWeight": "normal"
                }
              },
               {
                "type": "padding",
                 "top": 0.0,
                "bottom": 0.0,
                "left": 10.0,
                "right": 0.0,
                "child": {
                  "type": "text",
                  "label": "US",
                  "textColor": "#FFFFFF",
                  "fontSize": 12,
                  "fontWeight": "normal"
                }
              }      
            ]
         },
      
              
          {
          "type": "listViewBuilder",
          "itemCount": 11,
           "height": 40.0,
           "scrollDirection":"horizontal",
          "child": 
          {
            "type": "padding",
             "top":0.0,
            "bottom":0.0,
            "left": 15.0,
            "right": 0.0,
            "child": {
           "type": "buttonContainer",
           "height": 40.0,
           "width": 40.0,
           "child": {
            "type": "padding",
             "top":10.0,
            "bottom":0.0,
            "left":0.0,
            "right": 0.0,
            "child": {
             "type": "text",
            "label": "1",
            "textColor": "#F6F6F6",
            "fontSize": 14,
            "fontWeight": "Bold"   
            }
           },
           "tag": "goToCart2",
               "decoration":{
                  "color":"#24CF9C",
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
          },
          
        
          
        {
         "type": "row",
          "mainalignment": "start",
          "crossalignment": "start",
         "children": [
              {
                "type": "padding",
                 "top": 0.0,
                "bottom": 0.0,
                "left": 20.0,
                "right": 0.0,
                "child": {
                  "type": "text",
                  "label": "Colors :",
                  "textColor": "#FFFFFF",
                  "fontSize": 14,
                  "fontWeight": "normal"
                }
              },
              
            {
            "type":"padding",
            "top": 0.0,
            "bottom":0.0,
            "left":10.0,
            "right": 0.0,
            "child":{
              "type" : "container",
              "height": 20.0,
              "width":  20.0,
              "child" :
              {
                "type":"padding",
                "top": 0.0,
                "bottom": 0.0,
                "left": 0.0,
                "right": 0.0,
                "child":  {
                  "type":"container",
                  "height":10.0,
                  "width":10.0,
                  "child":{},
                  "decoration":{
                    "color":"#2C2B37",
                    "opacity": 1.0,
                    "borderColor":"#6D7274",
                    "borderRadius":{
                    "topRight":6,
                    "bottomRight":6,
                    "topLeft":6,
                    "bottomLeft":6
                    }
                  }
                }
              },
              "decoration":{
                "borderColor":"#FFFFFF",
                "borderRadius":{
                "topRight":6,
                "bottomRight":6,
                "topLeft":6,
                "bottomLeft":6
                }
              }
            }
          },
          
           {
            "type":"padding",
            "top": 0.0,
            "bottom":0.0,
            "left":10.0,
            "right": 0.0,
            "child":{
              "type" : "container",
              "height": 20.0,
              "width":  20.0,
              "child" :
              {

                "type":"padding",
                "top": 0.0,
                "bottom": 0.0,
                "left": 0.0,
                "right": 0.0,
                "child":  {
                  "type":"container",
                  "height":10.0,
                  "width":10.0,
                  "child":{
                   
                    
                  },
                  "decoration":{
                    "color":"#4FB65F",
                     "opacity": 1.0,
                     "borderColor":"#6D7274",
                    "borderRadius":{
                      "topRight":6,
                      "bottomRight":6,
                      "topLeft":6,
                      "bottomLeft":6
                    }
                  }
                }
              },
              "decoration":{
                "borderColor":"#6D7274",
                 "opacity": 1.0,
                "borderRadius":{
                  "topRight":6,
                  "bottomRight":6,
                  "topLeft":6,
                  "bottomLeft":6
                }
              }
            }
          },
           {
            "type":"padding",
            "top": 0.0,
            "bottom":0.0,
            "left":10.0,
            "right": 0.0,
            "child":{
              "type" : "container",
              "height": 20.0,
              "width":  20.0,
              "child" :
              {

                "type":"padding",
                "top": 0.0,
                "bottom": 0.0,
                "left": 0.0,
                "right": 0.0,
                "child":  {
                  "type":"container",
                  "height":10.0,
                  "width":10.0,
                  "child":{
                   
                    
                  },
                  "decoration":{
                    "color":"#FF9F76",
                     "opacity": 1.0,
                     "borderColor":"#6D7274",
                    "borderRadius":{
                      "topRight":6,
                      "bottomRight":6,
                      "topLeft":6,
                      "bottomLeft":6
                    }
                  }
                }
              },
              "decoration":{
               "borderColor":"#6D7274",
                "opacity": 1.0,
                "borderRadius":{
                  "topRight":6,
                  "bottomRight":6,
                  "topLeft":6,
                  "bottomLeft":6
                }
              }
            }
          }
         ]
        },
        
       
        
          
           
        
        {
          "type": "padding",
            "top": 0.0,
            "bottom": 0.0,
            "left": 20.0,
            "right": 20.0,
          "child": {
           "type": "row",
            "mainalignment": "spaceBetween",
           "crossalignment": "start",
           "children": [
           
           {
           "type": "column",
            "mainalignment": "start",
           "crossalignment": "start",
           "children": [
            {
            "type": "padding",
            "top": 0.0,
            "bottom": 0.0,
            "left": 0.0,
            "right": 0.0,
            "child": 
                {
                  "type": "text",
                  "label": "Price :",
                  "textColor": "#9CA0AF",
                  "fontSize": 14,
                  "fontWeight": "bold"
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
                  "label": "\$290.0",
                  "textColor": "#FFFFFF",
                  "fontSize": 24,
                  "fontWeight": "bold"
                }
              }
             ]
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
           "width":  160.0,
           "child": {
            "type": "padding",
             "top":10.0,
            "bottom":0.0,
            "left":0.0,
            "right": 0.0,
            "child": {
             "type": "row",
             "mainalignment": "spaceEvenly",
             "crossalignment": "start",
             "children": [
             
             {
              "type": "icon",
                "iconData": "bag",
                "size": 20.0,
                "color": "#000000"
             },
             
             {
              "type": "padding",
             "top": 4.0,
            "bottom":0.0,
            "left":0.0,
            "right": 10.0,
            "child":  {
             "type": "text",
            "label": "Add To Cart",
            "textColor": "#000000",
            "fontSize": 14,
            "fontWeight": "Bold"   
             }
             }   
             ]
            }
           },
           
           "tag": "goToCart2",
               "decoration":{
                  "color":"#FFFFFF",
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
        
       
   
     ]
   }
  },
    {
           "type": "sizedBox",
          "height": 20.0,
          "width": 0.0
          }
         
         
         
           
    ]
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