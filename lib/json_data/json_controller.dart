import 'dart:convert';




class JsonController {

  loadSplashScreenUI() {
    final jsonString = '''
   {
   "type":"scaffold",
   "backgroundColor":"#FFFFFF",
   "body":{
      "type":"singleChildScrollView",
      "child":{
         "type":"container",
         "height":800.0,
         "width":500.0,
         "decoration":{
            "gradient":{
               "type":"LinearGradient",
               "begin":"Alignment.topLeft",
               "end":"Alignment.bottomRight",
               "colors":[
                  "#08C8F6",
                  "#4D5DFB"
               ]
            }
         },
         "child":{
            "type":"column",
            "mainalignment":"start",
            "crossalignment":"start",
            "children":[
               {
                  "type":"sizedBox",
                  "height": 180.0,
                  "width": 0.0
               },
                 {
                     "type":"container",
                     "height": 100.0,
                     "width": 500.0,
                     "child": {
                     "type":"center",
                     "child":{
                     "type":"image",
                     "imageUrl": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqRJvjy5Mi3p38PEvu4L1yo6kYFB_cmxHNMA&usqp=CAU",
                     "width": 200.0,
                     "height": 100.0,
                     "fit" : "cover"
                  }
                }
               },
               
              
               {
                  "type":"padding",
                  "top":270.0,
                  "bottom":0.0,
                  "left":30.0,
                  "right":0.0,
                  "child":{
                     "type":"text",
                     "label":"Best",
                     "textColor":"#FFFFFF",
                     "fontSize":50,
                     "fontWeight":"bold"
                  }
               },
               {
                  "type":"padding",
                  "top":0.0,
                  "bottom":0.0,
                  "left":30.0,
                  "right":0.0,
                  "child":{
                     "type":"text",
                     "label":"Shopping",
                     "textColor":"#FFFFFF",
                     "fontSize":30,
                     "fontWeight":"bold"
                  }
               },
               
               {
                  "type":"sizedBox",
                  "height":80.0,
                  "width":0.0
               },
               
               {
                  "type":"padding",
                  "top":0.0,
                  "bottom":0.0,
                  "left":30.0,
                  "right":0.0,
                  "child":{
                     "type":"container",
                     "height":2.0,
                     "width":500.0,
                     "decoration":{
                        "color":"#FFFFFF",
                        "borderRadius":{
                           "topRight":50,
                           "bottomRight":50,
                           "topLeft":50,
                           "bottomLeft":50
                        }
                     }
                  }
               },
               
               {
                  "type":"sizedBox",
                  "height":50.0,
                  "width":0.0
               },
               
               {
                  "type":"row",
                  "mainalignment":"start",
                  "crossalignment":"start",
                  "children":[
                     {
                        "type":"padding",
                        "top":30.0,
                        "bottom":0.0,
                        "left":30.0,
                        "right":0.0,
                        "child":{
                           "type":"text",
                           "label":"Get started",
                           "textColor":"#FFFFFF",
                           "fontSize":16,
                           "fontWeight":"normal"
                        }
                     },
                     
                     {
                        "type":"sizedBox",
                        "height":0.0,
                        "width":130.0
                     },
                     {
                     "type": "flip",
                      "direction": "FlipDirection.HORIZONTAL",
                     "child":{
                     "type":"container",
                     "height": 200.0,
                     "width": 200.0,
                      "decoration":{
                              "color":"#000000",
                              "borderRadius":{
                                 "topRight":50,
                                 "bottomRight":50,
                                 "topLeft":50,
                                 "bottomLeft":50
                              }
                           }      
                         }
                       },
                     
                     {
                        "type":"padding",
                        "top":0.0,
                        "bottom":0.0,
                        "left":50.0,
                        "right": 10.0,
                        "child":{
                           "type":"container",
                           "height":70.0,
                           "width":70.0,
                           "child":{
                              "type":"iconButton",
                              "child":{
                           "type":"icon",
                            "iconData": "arrow_forward",
                            "color": "#3C6CE9",
                            "size": 18.0
                           },
                              "tag" : "test2"
                           },
                           "decoration":{
                              "color":"#FFFFFF",
                              "borderRadius":{
                                 "topRight":50,
                                 "bottomRight":50,
                                 "topLeft":50,
                                 "bottomLeft":50
                              }
                           }
                        }
                     },
                      {
                        "type":"padding",
                        "top":0.0,
                        "bottom":0.0,
                        "left":50.0,
                        "right": 10.0,
                        "child":{
                           "type":"container",
                           "height":70.0,
                           "width":70.0,
                           "child":{
                              "type":"iconButton",
                              "child":{
                           "type":"icon",
                            "iconData": "arrow_forward",
                            "color": "#3C6CE9",
                            "size": 18.0
                           },
                              "tag" : "test2"
                           },
                           "decoration":{
                              "color":"#FFFFFF",
                              "borderRadius":{
                                 "topRight":50,
                                 "bottomRight":50,
                                 "topLeft":50,
                                 "bottomLeft":50
                              }
                           }
                        }
                     }
                  ]
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



  loadHomeScreenUI() {
    final jsonString = '''
 {
  "type": "scaffold",
  "backgroundColor": "#FFFFFF",
  "body": {
    "type": "singleChildScrollView",
    "child": {
      "type": "container",
      "height": 800.0,
      "width": 500.0,
      "decoration": {
        "color": "#FFFFFF"
      },
      "child": {
        "type": "column",
        "mainalignment": "start",
        "crossalignment": "start",
        "children": [
          {
            "type": "sizedBox",
            "height": 80.0,
            "width": 0.0
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
                  "type": "container",
                  "height": 32.0,
                  "width": 32.0,
                  "child": {
                    "type": "center",
                    "child": {
                      "type": "iconButton",
                      "child": {
                        "type": "icon",
                        "iconData": "drawer",
                        "color": "#000000",
                        "size": 16.0
                      },
                      "tag": "drawer"
                    }
                  },
                  "decoration": {
                    "color": "#FFFFFF",
                    "borderColor": "#747474",
                    "borderRadius": {
                      "topRight": 5,
                      "bottomRight": 5,
                      "topLeft": 5,
                      "bottomLeft": 5
                    }
                  }
                }
              },
              {
                "type": "padding",
                "top": 0.0,
                "bottom": 0.0,
                "left": 20.0,
                "right": 0.0,
                "child": {
                  "type": "container",
                  "height": 30.0,
                  "width": 80.0,
                  "child": {
                    "type": "center",
                    "child": {
                      "type": "image",
                      "imageUrl": "https://logolook.net/wp-content/uploads/2021/11/Shopee-Logo.png",
                      "width": 80.0,
                      "height": 34.0,
                      "fit": "cover"
                    }
                  }
                }
              },
              {
                "type": "padding",
                "top": 0.0,
                "bottom": 0.0,
                "left": 180.0,
                "right": 0.0,
                "child": {
                  "type": "container",
                  "height": 32.0,
                  "width": 32.0,
                  "child": {
                    "type": "center",
                    "child": {
                      "type": "iconButton",
                      "child": {
                        "type": "icon",
                        "iconData": "search",
                        "color": "#000000",
                        "size": 16.0
                      },
                      "tag": "search"
                    }
                  },
                  "decoration": {
                    "color": "#FFFFFF",
                    "borderColor": "#747474",
                    "borderRadius": {
                      "topRight": 5,
                      "bottomRight": 5,
                      "topLeft": 5,
                      "bottomLeft": 5
                    }
                  }
                }
              }
            ]
          },
          {
          "type": "container",
           "height": 200.0,
           "width": 500.0,
          "child":  {
          "type":"pageView",
          "activeColor": "#3C6CE9",
          "children": [
             {
            "type": "padding",
            "top": 30.0,
            "bottom": 0.0,
            "left": 20.0,
            "right": 20.0,
            "child": {
              "type": "container",
              "height": 150.0,
              "width": 500.0,
              "child": {
                "type": "row",
                "mainalignment": "start",
                "crossalignment": "start",
                "children": [
                  {
                    "type": "padding",
                    "top": 30.0,
                    "bottom": 0.0,
                    "left": 10.0,
                    "right": 0.0,
                    "child": {
                      "type": "column",
                      "mainalignment": "start",
                      "crossalignment": "start",
                      "children": [
                        {
                          "type": "text",
                          "label": "30% discount",
                          "textColor": "#747474",
                          "fontSize": 30,
                          "fontWeight": "bold"
                        },
                        {
                          "type": "text",
                          "label": "on your initial purchase",
                          "textColor": "#747474",
                          "fontSize": 14,
                          "fontWeight": "normal"
                        },
                        {
                          "type": "sizedBox",
                          "height": 10.0,
                          "width": 0.0
                        },
                        {
                          "type": "button",
                          "tag": "shop now",
                          "label": "shop now",
                          "backgroundColor": "#3C6CE9",
                          "textColor": "#FFFFFF",
                          "required": true,
                          "height": 35.0,
                          "width": 100.0,
                          "fontWeight": "bold"
                        }
                      ]
                    }
                  },
                  {
                    "type": "padding",
                    "top": 10.0,
                    "bottom": 0.0,
                    "left": 30.0,
                    "right": 0.0,
                    "child": {
                      "type": "container",
                      "height": 125.0,
                      "width": 125.0,
                      "child": {
                        "type": "image",
                        "imageUrl": "https://assets.ajio.com/medias/sys_master/root/20221012/UOm7/634649e9f997ddfdbd220922/-1117Wx1400H-441294316-darkgrey-MODEL.jpg",
                        "width": 125.0,
                        "height": 125.0,
                        "fit": "cover"
                      }
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
                  "begin": "Alignment.centerLeft",
                  "end": "Alignment.centerRight",
                  "colors": [
                    "#E5E5E6",
                    "#FBFBFB",
                    "#EFEFF0"
                  ]
                }
              }
            }
          },
          
            {
            "type": "padding",
            "top": 30.0,
            "bottom": 0.0,
            "left": 20.0,
            "right": 20.0,
            "child": {
              "type": "container",
              "height": 150.0,
              "width": 500.0,
              "child": {
                "type": "row",
                "mainalignment": "start",
                "crossalignment": "start",
                "children": [
                  {
                    "type": "padding",
                    "top": 30.0,
                    "bottom": 0.0,
                    "left": 10.0,
                    "right": 0.0,
                    "child": {
                      "type": "column",
                      "mainalignment": "start",
                      "crossalignment": "start",
                      "children": [
                        {
                          "type": "text",
                          "label": "30% discount",
                          "textColor": "#747474",
                          "fontSize": 30,
                          "fontWeight": "bold"
                        },
                        {
                          "type": "text",
                          "label": "on your initial purchase",
                          "textColor": "#747474",
                          "fontSize": 14,
                          "fontWeight": "normal"
                        },
                        {
                          "type": "sizedBox",
                          "height": 10.0,
                          "width": 0.0
                        },
                        {
                          "type": "button",
                          "tag": "shop now",
                          "label": "shop now",
                          "backgroundColor": "#3C6CE9",
                          "textColor": "#FFFFFF",
                          "required": true,
                          "height": 35.0,
                          "width": 100.0,
                          "fontWeight": "bold"
                        }
                      ]
                    }
                  },
                  {
                    "type": "padding",
                    "top": 10.0,
                    "bottom": 0.0,
                    "left": 30.0,
                    "right": 0.0,
                    "child": {
                      "type": "container",
                      "height": 125.0,
                      "width": 125.0,
                      "child": {
                        "type": "image",
                        "imageUrl": "https://assets.ajio.com/medias/sys_master/root/20221012/UOm7/634649e9f997ddfdbd220922/-1117Wx1400H-441294316-darkgrey-MODEL.jpg",
                        "width": 125.0,
                        "height": 125.0,
                        "fit": "cover"
                      }
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
                  "begin": "Alignment.centerLeft",
                  "end": "Alignment.centerRight",
                  "colors": [
                    "#E5E5E6",
                    "#FBFBFB",
                    "#EFEFF0"
                  ]
                }
              }
            }
          },
          
            {
            "type": "padding",
            "top": 30.0,
            "bottom": 0.0,
            "left": 20.0,
            "right": 20.0,
            "child": {
              "type": "container",
              "height": 150.0,
              "width": 500.0,
              "child": {
                "type": "row",
                "mainalignment": "start",
                "crossalignment": "start",
                "children": [
                  {
                    "type": "padding",
                    "top": 30.0,
                    "bottom": 0.0,
                    "left": 10.0,
                    "right": 0.0,
                    "child": {
                      "type": "column",
                      "mainalignment": "start",
                      "crossalignment": "start",
                      "children": [
                        {
                          "type": "text",
                          "label": "30% discount",
                          "textColor": "#747474",
                          "fontSize": 30,
                          "fontWeight": "bold"
                        },
                        {
                          "type": "text",
                          "label": "on your initial purchase",
                          "textColor": "#747474",
                          "fontSize": 14,
                          "fontWeight": "normal"
                        },
                        {
                          "type": "sizedBox",
                          "height": 10.0,
                          "width": 0.0
                        },
                        {
                          "type": "button",
                          "tag": "shop now",
                          "label": "shop now",
                          "backgroundColor": "#3C6CE9",
                          "textColor": "#FFFFFF",
                          "required": true,
                          "height": 35.0,
                          "width": 100.0,
                          "fontWeight": "bold"
                        }
                      ]
                    }
                  },
                  {
                    "type": "padding",
                    "top": 10.0,
                    "bottom": 0.0,
                    "left": 30.0,
                    "right": 0.0,
                    "child": {
                      "type": "container",
                      "height": 125.0,
                      "width": 125.0,
                      "child": {
                        "type": "image",
                        "imageUrl": "https://assets.ajio.com/medias/sys_master/root/20221012/UOm7/634649e9f997ddfdbd220922/-1117Wx1400H-441294316-darkgrey-MODEL.jpg",
                        "width": 125.0,
                        "height": 125.0,
                        "fit": "cover"
                      }
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
                  "begin": "Alignment.centerLeft",
                  "end": "Alignment.centerRight",
                  "colors": [
                    "#E5E5E6",
                    "#FBFBFB",
                    "#EFEFF0"
                  ]
                 }
               }
              }
            }
          ] 
         }
       },
       


       
          
          {
          "type": "listViewBuilder",
          "itemCount": 8,
           "height": 65.0,
          "child": 
          {
            "type": "padding",
            "top": 20.0,
            "bottom": 10.0,
            "left": 20.0,
            "right": 0.0,
            "child": {
              "type": "container",
             
              "width": 80.0,
              "child": 
              {
                "type": "textButton",
                "child": {
                  "type": "text",
                    "label": "Popular",
                    "textColor": "#FFFFFF",
                    "fontSize": 14,
                    "fontWeight": "Bold"
                                   
                      },
                      "tag": "popular"
                    },
                    "decoration": {
                    "color": "#3C6CE9",
                    "borderColor": "#FFFFFF",
                    "borderRadius": {
                      "topRight": 20,
                      "bottomRight": 20,
                      "topLeft": 20,
                      "bottomLeft": 20
                    }
                   }   
                 }
               }
             },
          
          {      
          "type": "gridViewBuilder",
          "itemCount": 10,
          "crossAxisCount": 2,
          "mainAxisExtent": 300.0,
          "mainAxisSpacing": 20.0,
           "child":
           {
            "type": "padding",
            "top": 0.0,
            "bottom": 0.0,
            "left": 10.0,
            "right": 10.0,
            "child": {
              "type": "container",
              "child": {
               
               "type" : "column",
               "mainalignment": "start",
                "crossalignment": "start",
               "children" : [
               {
                "type": "padding",
                "top": 10.0,
                "bottom": 0.0,
                "left": 140.0,
                "right": 0.0,
                "child": {
                  "type": "container",
                  "height": 24.0,
                  "width": 24.0,
                  "child": {
                    "type": "center",
                    "child": {
                      "type": "iconButton",
                      "child": {
                        "type": "icon",
                        "iconData": "favorite_border",
                        "color": "#747474",
                        "size": 8.0
                      },
                      "tag": "favorite"
                    }
                  },
                  "decoration": {
                    "color": "#FFFFFF",
                    "borderColor": "#747474",
                    "borderRadius": {
                      "topRight": 5,
                      "bottomRight": 5,
                      "topLeft": 5,
                      "bottomLeft": 5
                    }
                  }
                }
              },
              {
                "type": "padding",
                "top": 5.0,
                "bottom": 0.0,
                "left": 20.0,
                "right": 0.0,
                "child": 
                {
                "type": "image",
                "imageUrl": "https://assets.ajio.com/medias/sys_master/root/20221012/UOm7/634649e9f997ddfdbd220922/-1117Wx1400H-441294316-darkgrey-MODEL.jpg",
                "width": 140.0,
                "height": 150.0,
                "fit": "cover"
                }
              },
              {
              "type" : "sizedBox",
              "height" : 10.0,
              "width" : 0.0
              },
              
              {
              "type" : "padding",
               "top": 0.0,
                "bottom": 0.0,
                "left": 20.0,
                "right": 0.0,
                "child":
                 {
              "type": "text",
              "label": "Solid Denim Jacket",
              "textColor": "#747474",
              "fontSize": 14,
              "fontWeight": "Bold"
              }
              },
              
            {
              "type" : "row",
              "mainalignment": "start",
              "crossalignment": "start",
               "children" : [
               
               {
               "type": "padding",
                "top": 14.0,
                "bottom": 0.0,
                "left": 20.0,
                "right": 0.0,
                "child": 
                 {
              "type": "text",
              "label": "\$258.15 \$400.1",
              "textColor": "#747474",
              "fontSize": 12,
              "fontWeight": "Bold"
              }
               },
              
              {
                "type": "padding",
                "top": 8.0,
                "bottom": 0.0,
                "left": 20.0,
                "right": 0.0,
                "child": {
                  "type": "container",
                  "height": 28.0,
                  "width": 40.0,
                  "child": {
                    "type": "center",
                    "child": {
                      "type": "iconButton",
                      "child": {
                        "type": "icon",
                        "iconData": "arrow_forward",
                        "color": "#747474",
                        "size": 16.0
                      },
                      "tag": "goToNxtPage"
                    }
                  },
                  "decoration": {
                    "color": "#FFFFFF",
                    "borderColor": "#FFFFFF",
                    "borderRadius": {
                      "topRight": 5,
                      "bottomRight": 5,
                      "topLeft": 5,
                      "bottomLeft": 5
                    }
                   }
                  }
                 }
                ]
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
        ]
      }
    }
  }
}

''';
    final parsedJson = json.decode(jsonString);
    return parsedJson;
  }




}