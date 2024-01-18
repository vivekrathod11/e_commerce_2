import 'dart:convert';

import 'package:get/get.dart';





class HomeController extends GetxController {





  loadHomeScreenUI() {
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
        "color":"#FFFFFF",
        "opacity": 1.0,
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
          "type": "padding",
          "top": 0.0,
          "bottom": 0.0,
          "left": 10.0,
          "right": 10.0,
          "child":  {
         "type": "row",
         "mainalignment": "spaceBetween",
         "crossalignment": "start",
         "children": [
         
         {
           "type": "container",
          "height": 45.0,
          "width": 300.0,
          "child": 
          {
          "type":"textField",
          "label":"what are yours looking for?",
          "placeholder":"Enter your Email Address",
          "obscureText":false,
          "prefixIcon": "search",
          "suffixIcon": "",
          "prefixColor": "#9CA0AF99",
          "suffixColor": "#9CA0AF99",
          "fieldOpacity": 1.0,
          "colorName": "#F1F1F1",
          "filled": true,
          "radius": 10.0,
          "keyboardType": "text",
          "textInputAction": "done"
           }
         },
          
                     {
                        "type": "container",
                        "height": 43.0,
                        "width": 42.0,
                        "child": {
                          "type": "icon",
                          "iconData": "adjust",
                           "color": "#FFFFFF",
                           "size": 22.0  
                          },
                        
                        "decoration": {
                          "color": "#000000",
                          "opacity": 1.0,
                          "borderRadius": {
                            "topRight": 10,
                            "bottomRight": 10,
                            "topLeft": 10,
                            "bottomLeft": 10
                          }
                        }
                       }   
                     ]
                   } 
                  },
                 
                 {
                    "type": "padding",
                    "top": 30.0,
                    "bottom": 0.0,
                    "left": 15.0,
                    "right": 0.0,
                    "child": 
                        {
                          "type": "text",
                          "label": "New Collection",
                          "textColor": "#2D323A",
                          "fontSize": 18,
                          "fontWeight": "bold"
                        }
                      },
                      
                  {
                    "type": "padding",
                    "top": 0.0,
                    "bottom": 0.0,
                    "left": 15.0,
                    "right": 0.0,
                    "child": 
                        {
                          "type": "text",
                          "label": "Explore the new collection of sneakers",
                          "textColor": "#9CA0AF",
                          "fontSize": 12,
                          "fontWeight": "bold"
                        }
                      },
                      
                  {
                  "type": "sizedBox",
                  "height": 30.0,
                  "width": 0.0
                  },
                  
                  {
                    "type": "container",
                    "height": 180.0,
                    "width": 600.0,
                    "child":  {
                    "type": "listViewBuilder",
                    "scrollDirection":"horizontal",
                    "itemCount": 8,
                    "height": 160.0,
                    "child":  {
                    "type": "container",
                    "height": 400.0,
                    "width":500.0,
                    "child": {
                    "type": "carousel_slider",
                    "options": {
                        "viewportFraction": 0.8,
                        "initialPage": 0,
                        "enableInfiniteScroll": true,
                        "reverse": false,
                        "autoPlay": true,
                        "autoPlayInterval": 3000,
                        "autoPlayAnimationDuration": 800,
                        "autoPlayCurve": "fastOutSlowIn",
                        "enlargeCenterPage": true,
                        "scrollDirection": "horizontal"
                      },
                      "items": [
                      
                       {
                      "type":"resizeContainer",
                      "height":200.0,
                      "width":600.0,
                      "child":{
                      "type": "row",
                     "mainalignment": "start",
                     "crossalignment": "start",
                      "children": [
                      
                      {
                      "type": "padding",
                       "top": 0.0,
                      "bottom": 0.0,
                      "left": 0.0,
                      "right": 0.0,
                      "child": {
                      "type": "column",
                      "mainalignment": "start",
                      "crossalignment": "start",
                      "children": [        
                      {
                      "type": "padding",
                      "top": 30.0,
                      "bottom": 0.0,
                      "left": 20.0,
                      "right": 0.0,
                      "child": 
                          {
                            "type": "text",
                            "label": "Nike Air Max 270",
                            "textColor": "#FFFFFF",
                            "fontSize": 16,
                            "fontWeight": "bold"
                          }
                        },
                      
                             
                {
                    "type": "padding",
                    "top": 0.0,
                    "bottom": 0.0,
                    "left": 20.0,
                    "right": 0.0,
                    "child": 
                        {
                          "type": "text",
                          "label": "Men’s shoes",
                          "textColor": "#9CA0AF",
                          "fontSize": 12,
                          "fontWeight": "bold"
                        }
                      },
                      
                       {
                    "type": "padding",
                    "top": 40.0,
                    "bottom": 0.0,
                    "left": 20.0,
                    "right": 0.0,
                    "child": 
                        {
                          "type": "text",
                          "label": "\$258.15",
                          "textColor": "#FFFFFF",
                          "fontSize": 20,
                          "fontWeight": "bold"
                        }
                      } 
                     ]
                    }
                   },
                       {
                          "type": "transform"
                        }
                       ]
                      },
                        "decoration":{
                         "color":"#2E2D3A",
                         "opacity": 1.0,
                            "borderRadius":{
                               "topRight":20,
                               "bottomRight":20,
                               "topLeft":20,
                               "bottomLeft":20
                          }
                       }
                    }    
                 ]
               },
               "decoration": {
                    "color": "#FFFFFF"
               }
             }    
           }
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
         "child":  {
          "type": "listViewBuilder",
          "itemCount": 8,
           "height": 60.0,
           "scrollDirection":"horizontal",
          "child": 
          {
            "type": "padding",
            "top": 20.0,
            "bottom": 0.0,
            "left": 15.0,
            "right": 15.0,
            "child": {
              "type": "container",
              "width": 70.0,
              "decoration":{
           "color":"#FFFFFF",
           "opacity": 0.0,
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
               "type": "column",
               "mainalignment": "start",
               "crossalignment": "start",
               "children": [
               {
                  "type": "text",
                  "label": "Lifestyle",
                  "textColor": "#2D323A",
                  "fontSize": 18,
                  "fontWeight": "bold"
                     }
                    
                 ]    
                }              
              }
            }
          }
        },
        
         "content": {
         "type": "padding",
           "top": 15.0,
          "bottom": 0.0,
          "left": 0.0,
          "right": 0.0,
         "child": {
         "type": "resizeContainer",
         "height": 700.0,
         "width": 400.0,
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
         "child":  {      
          "type": "gridViewBuilder",
          "itemCount": 10,
          "crossAxisCount": 2,
          "mainAxisExtent": 200.0,
          "mainAxisSpacing": 15.0,
          "crossAxisSpacing": 0.0,
          
           "child":
           {
            "type": "padding",
            "top": 0.0,
            "bottom": 0.0,
            "left": 10.0,
            "right": 10.0,
            "child": {
              "type": "buttonContainer",
              "tag": "goToDetailsScreen",
              "height": 300.0,
              "child": {
               
               "type" : "column",
               "mainalignment": "start",
                "crossalignment": "start",
               "children" : [
               {
               "type": "sizedBox",
               "height": 15.0,
               "width": 0.0
               },
                {
                "type": "row",
                 "mainalignment": "spaceEvenly",
                "crossalignment": "start",
                "children": [
                {
                "type": "container",
                "height": 40.0,
                "width": 100.0,
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
                "size": 18.0,
                "color": "#9CA0AF"
                },
                {
                "type": "padding",
                 "top": 3.0,
                "bottom": 0.0,
                "left": 5.0,
                "right": 0.0,
                "child": {
                  "type": "text",
                  "label": "4.8",
                  "textColor": "#2D323A",
                  "fontSize": 12,
                  "fontWeight": "normal"
                }
                }
                
                ]
                
                }
                
                
                
                },
                 {
                "type": "icon",
                "iconData": "bookmark",
                "size": 18.0,
                "color": "#9CA0AF"
                }
                ]
               },
               
               {
               "type": "padding",
                "top": 0.0,
                "bottom": 0.0,
                "left": 20.0,
                "right": 0.0,
               "child": {
                 "type": "imageAsset",
                "imageUrl": "assets/nike2.png",
                "width": 130.0,
                "height": 80.0,
                "fit": "cover"
               }
               },
                {
               "type": "padding",
                "top": 10.0,
                "bottom": 0.0,
                "left": 10.0,
                "right": 0.0,
               "child":
               
               {
                  "type": "text",
                  "label": "Nike Legend Essential",
                  "textColor": "#9CA0AF",
                  "fontSize": 14,
                  "fontWeight": "bold"
                  }
                  },
                  
                   {
               "type": "padding",
                "top": 5.0,
                "bottom": 0.0,
                "left": 10.0,
                "right": 0.0,
               "child":
                  
                   {
                  "type": "text",
                  "label": "\$290.0",
                  "textColor": "#2D323A",
                  "fontSize": 18,
                  "fontWeight": "bold"
                  }
                 }   
               ]
             },
              "decoration": {
              "borderColor": "#E5E5E6",
                    "borderRadius": {
                      "topRight": 10,
                      "bottomRight": 10,
                      "topLeft": 10,
                      "bottomLeft": 10
                    },
                "gradient": {
                  "type": "LinearGradient",
                  "begin": "Alignment.topCenter",
                  "end": "Alignment.bottomCenter",
                  "colors": [
                    "#E5E5E6",
                    "#FBFBFB",
                    "#EFEFF0"
                  ]
                }
              }
             }
           }
          }
           }
         } 
       },
              {
                  "type": "sizedBox",
                  "height": 10.0,
                  "width": 0.0
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