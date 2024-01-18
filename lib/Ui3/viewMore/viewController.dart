import 'dart:convert';

import 'package:get/get.dart';





class ViewController extends GetxController {






  loadViewScreenUI() {

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
        "color":"#E9EFF4",
        "opacity": 1.0,
        "borderRadius":{
        "topRight":0,
        "bottomRight":0,
        "topLeft":0,
        "bottomLeft":0
       }
     },
    "child": {
    "type": "listview",
    "scrollDirection": "vertical",
    "children": [
    

            
        {
         "type": "stickyHeader",
         "header": {
         "type": "padding",
          "top": 30.0,
          "bottom": 0.0,
          "left": 10.0,
          "right": 10.0,
         "child": {
         "type" :"container",
         "height": 60.0,
         "width": 500.0,
         "decoration":{
         "color":"#000000",
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
    "mainalignment": "spaceBetween",
    "crossalignment": "start",
    "children": [
 
        {
         "type": "text",
          "label": "LifeStyle",
          "textColor": "#000000",
          "fontSize": 20,
          "fontWeight": "bold" 
        }
             ]      
            }
          }
         },
   "content": {
    "type": "column",
    "mainalignment": "spaceBetween",
    "crossalignment": "start",  
    "children": [   
                {
                "type": "padding",
                 "top": 0.0,
                "bottom": 0.0,
                "left": 15.0,
                "right": 0.0,
                "child":  
          {
          "type":"container",
          "height": 800.0,
          "width": 360.0,
           "decoration": {
                      "color": "#FFFFFF",
                      "borderColor": "#00000000",
                      "opacity": 0.0,
                      "borderRadius": {
                        "topRight": 5,
                        "bottomRight": 5,
                        "topLeft": 5,
                        "bottomLeft": 5
                    }
                   },
                     "child":  {
                     "type": "listview",
                     "scrollDirection":"vertical",
                     "children":  [
                   {
                      "type": "container",
                      "height": 250.0,
                      "width": 160.0,
                      "decoration": {
                      "color": "#FFFFFF",
                      "borderColor": "#00000000",
                      "opacity": 0.0,
                      "borderRadius": {
                        "topRight": 5,
                        "bottomRight": 5,
                        "topLeft": 5,
                        "bottomLeft": 5
                    }
                   },
                      "child": {
                      "type": "card",
                      "tag": "goToDetails3",
                      "id": 55,
                      "child": {
                      "type": "column",
                      "mainalignment": "spaceAround",
                      "crossalignment": "start",
                      "children": [
                      
                      {
                      "type": "padding",
                      "top": 0.0,
                      "bottom": 0.0,
                      "left": 10.0,
                      "right": 10.0,
                      "child": {
                      "type": "container",
                      "height": 160.0,
                      "width": 350.0,
                      "decoration": {
                      "color": "#D6EEB9",
                      "borderColor": "#00000000",
                      "opacity": 1.0,
                      "borderRadius": {
                        "topRight": 3,
                        "bottomRight": 3,
                        "topLeft": 3,
                        "bottomLeft": 3
                    }
                   },
                      "child": {
                      "type": "column",
                      "mainalignment": "spaceEvenly",
                      "crossalignment": "center",
                      "children": [
                      
                     {
                     "type":"padding",
                      "top": 0.0,
                      "bottom": 0.0,
                      "left": 10.0,
                      "right": 0.0,
                     "child":      {
                  "type": "row",
                  "mainalignment": "end",
                  "crossalignment": "start",
                  "children":  [
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
                      "left": 0.0,
                      "right": 0.0,
                      "child":   {
                        "type": "imageAsset",
                        "imageUrl": "assets/nike2.png",
                        "width": 220.0,
                        "height": 110.0,
                        "fit": "cover"
                       }
                      }
                      
                      
                      
                      ]
                      }
                      }
                      },
                      
                   {
                    "type": "padding",
                    "top": 0.0,
                    "bottom": 0.0,
                    "left": 10.0,
                    "right": 0.0,
                    "child": 
                        {
                          "type": "text",
                          "label": "Nike Air Max 260",
                          "textColor": "#9CA0AF",
                          "fontSize": 12,
                          "fontWeight": "bold"
                        }
                      },
                      
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
                    "type": "padding",
                    "top": 0.0,
                    "bottom": 0.0,
                    "left": 0.0,
                    "right": 0.0,
                    "child": 
                        {
                          "type": "text",
                          "label": "\$299.9",
                          "textColor": "#000000",
                          "fontSize": 18,
                          "fontWeight": "bold"
                        }
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
                 "mainalignment": "spaceBetween",
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
              }
             ]
             }
            }           
          ]
                      
          },
          "elevation": 1.0,
          "color": "#FFFFFF"     
          }
        },
        
                      {
                      "type": "container",
                      "height": 250.0,
                      "width": 160.0,
                      "decoration": {
                      "color": "#FFFFFF",
                      "borderColor": "#00000000",
                      "opacity": 0.0,
                      "borderRadius": {
                        "topRight": 5,
                        "bottomRight": 5,
                        "topLeft": 5,
                        "bottomLeft": 5
                    }
                   },
                      "child": {
                      "type": "card",
                      "tag": "goToDetails3",
                      "child": {
                      "type": "column",
                      "mainalignment": "spaceAround",
                      "crossalignment": "start",
                      "children": [
                      
                      {
                      "type": "padding",
                      "top": 0.0,
                      "bottom": 0.0,
                      "left": 10.0,
                      "right": 10.0,
                      "child": {
                      "type": "container",
                      "height": 160.0,
                      "width": 350.0,
                      "decoration": {
                      "color": "#D6EEB9",
                      "borderColor": "#00000000",
                      "opacity": 1.0,
                      "borderRadius": {
                        "topRight": 3,
                        "bottomRight": 3,
                        "topLeft": 3,
                        "bottomLeft": 3
                    }
                   },
                      "child": {
                      "type": "column",
                      "mainalignment": "spaceEvenly",
                      "crossalignment": "center",
                      "children": [
                      
                     {
                     "type":"padding",
                      "top": 0.0,
                      "bottom": 0.0,
                      "left": 10.0,
                      "right": 0.0,
                     "child":      {
                  "type": "row",
                  "mainalignment": "end",
                  "crossalignment": "start",
                  "children":  [
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
                      "left": 0.0,
                      "right": 0.0,
                      "child":   {
                        "type": "imageAsset",
                        "imageUrl": "assets/nike2.png",
                        "width": 220.0,
                        "height": 110.0,
                        "fit": "cover"
                       }
                      }
                      
                      
                      
                      ]
                      }
                      }
                      },
                      
                   {
                    "type": "padding",
                    "top": 0.0,
                    "bottom": 0.0,
                    "left": 10.0,
                    "right": 0.0,
                    "child": 
                        {
                          "type": "text",
                          "label": "Nike Air Max 260",
                          "textColor": "#9CA0AF",
                          "fontSize": 12,
                          "fontWeight": "bold"
                        }
                      },
                      
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
                    "type": "padding",
                    "top": 0.0,
                    "bottom": 0.0,
                    "left": 0.0,
                    "right": 0.0,
                    "child": 
                        {
                          "type": "text",
                          "label": "\$299.9",
                          "textColor": "#000000",
                          "fontSize": 18,
                          "fontWeight": "bold"
                        }
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
                 "mainalignment": "spaceBetween",
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
              }
             ]
             }
            }           
          ]
                      
          },
          "elevation": 1.0,
          "color": "#FFFFFF"     
          }
        }
      ]
   }
  } 
 }
]
}
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