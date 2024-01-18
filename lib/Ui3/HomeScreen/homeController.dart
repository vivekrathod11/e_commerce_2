import 'dart:convert';
import 'package:e_commerce_2/ConfigController/configController.dart';
import 'package:e_commerce_2/appColors/appColorsAll.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';





class Home3Controller extends GetxController {



  loadHome3ScreenUI(){

    ConfigController configController = Get.put(ConfigController());
    configController.appColors();
    
    final box = GetStorage();
   // var data = configController.configResponse.data!.colors;

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
      "color":"primaryColor",
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
                    "child":  {
                      "type" :"imageIcon",
                      "image": "assets/menu.png",
                      "size": 16.0,
                      "color": "#000000"
                    }
                  },
                  {
                    "type": "container",
                    "height": 40.0,
                    "width": 40.0,
                    "child": {
                      "type": "imageAsset",
                      "imageUrl": "assets/nikelogo2.png",
                      "width": 40.0,
                      "height": 40.0,
                      "fit": "contain"
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
                    "child":  {
                      "type" :"imageIcon",
                      "image": "assets/menu.png",
                      "size": 16.0,
                      "color": "#000000"
                    }
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
                "bottom": 20.0,
                "left": 15.0,
                "right": 15.0,
                "child":

                {
                  "type": "container",
                  "height": 45.0,
                  "width": 400.0,
                  "decoration": {
                    "color": "#FFFFFF",
                    "borderColor": "#00000000",
                    "opacity": 1.0,
                    "borderRadius": {
                      "topRight": 50,
                      "bottomRight": 50,
                      "topLeft": 50,
                      "bottomLeft": 50
                    }
                  },
                  "child":
                  {
                    "type":"textField",
                    "label":"what are yours looking for?",
                    "placeholder":"Enter your Email Address",
                    "obscureText":false,
                    "prefixIcon": "search",
                    "suffixIcon": "setting2",
                    "prefixColor": "#000000",
                    "suffixColor": "#9CA0AF99",
                    "fieldOpacity": 0.2,
                    "radius": 50.0,
                    "keyboardType": "email",
                    "textInputAction": "done",
                    "colorName": "#FFFFFF"
                  }
                }
              },
              {
                "type": "container",
                "height": 180.0,
                "width":500.0,
                "decoration": {
                  "color": "#00000000",
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
                      "type":"container",
                      "height":200.0,
                      "width":800.0,
                      "decoration": {
                        "color": "#AA7EEF",
                        "borderColor": "#00000000",
                        "opacity": 0.4,
                        "borderRadius": {
                          "topRight": 5,
                          "bottomRight": 5,
                          "topLeft": 5,
                          "bottomLeft": 5
                        }
                      },
                      "child":{
                        "type": "row",
                        "mainalignment": "start",
                        "crossalignment": "start",
                        "children": [
                          {
                            "type": "padding",
                            "top": 12.0,
                            "bottom": 0.0,
                            "left": 0.0,
                            "right": 0.0,
                            "child":  {
                              "type": "container",
                              "height":150.0,
                              "width":150.0,
                              "decoration": {
                                "color": "#00000000",
                                "opacity": 0.0,
                                "borderColor": "#00000000",
                                "borderRadius": {
                                  "topRight": 5,
                                  "bottomRight": 5,
                                  "topLeft": 5,
                                  "bottomLeft": 5
                                }
                              },
                              "child":  {
                                "type": "imageAsset",
                                "imageUrl": "assets/nike7.png",
                                "width": 150.0,
                                "height": 100.0,
                                "fit": "contain"

                              }
                            }
                          },

                          {
                            "type": "padding",
                            "top": 0.0,
                            "bottom": 0.0,
                            "left": 0.0,
                            "right": 0.0,
                            "child": {
                              "type": "column",
                              "mainalignment": "center",
                              "crossalignment": "start",
                              "children": [
                                {
                                  "type": "container",
                                  "height":50.0,
                                  "width":150.0,
                                  "decoration": {
                                    "color": "#00000000",
                                    "opacity": 0.0,
                                    "borderColor": "#00000000",
                                    "borderRadius": {
                                      "topRight": 5,
                                      "bottomRight": 5,
                                      "topLeft": 5,
                                      "bottomLeft": 5
                                    }
                                  },
                                  "child":
                                  {
                                    "type": "expanded",
                                    "child":  {
                                      "type": "text",
                                      "label": "Men’s shoes dfghjkl;'fghjkl",
                                      "textColor": "#FFFFFF",
                                      "fontSize": 14,
                                      "fontWeight": "bold",
                                      "overflow": "ellipsis"
                                    }
                                  }
                                },

                                {
                                  "type": "container",
                                  "height":50.0,
                                  "width":150.0,
                                  "decoration": {
                                    "color": "#00000000",
                                    "opacity": 0.0,
                                    "borderColor": "#00000000",
                                    "borderRadius": {
                                      "topRight": 5,
                                      "bottomRight": 5,
                                      "topLeft": 5,
                                      "bottomLeft": 5
                                    }
                                  },
                                  "child":
                                  {
                                    "type": "text",
                                    "label": "Men’s shoes",
                                    "textColor": "#FFFFFF",
                                    "fontSize": 14,
                                    "fontWeight": "bold",
                                    "overflow": "ellipsis"
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
                                    "label": "\$299.3",
                                    "textColor": "#FFFFFF",
                                    "fontSize": 20,
                                    "fontWeight": "bold",
                                    "overflow": "ellipsis"
                                  }
                                }
                              ]
                            }
                          }
                        ]
                      }
                    },

                    {
                      "type":"container",
                      "height":200.0,
                      "width":800.0,
                      "decoration": {
                        "color": "#AA7EEF",
                        "borderColor": "#00000000",
                        "opacity": 0.4,
                        "borderRadius": {
                          "topRight": 5,
                          "bottomRight": 5,
                          "topLeft": 5,
                          "bottomLeft": 5
                        }
                      },
                      "child":{
                        "type": "row",
                        "mainalignment": "start",
                        "crossalignment": "start",
                        "children": [
                          {
                            "type": "padding",
                            "top": 12.0,
                            "bottom": 0.0,
                            "left": 0.0,
                            "right": 0.0,
                            "child":  {
                              "type": "container",
                              "height":150.0,
                              "width":150.0,
                              "decoration": {
                                "color": "#00000000",
                                "opacity": 0.0,
                                "borderColor": "#00000000",
                                "borderRadius": {
                                  "topRight": 5,
                                  "bottomRight": 5,
                                  "topLeft": 5,
                                  "bottomLeft": 5
                                }
                              },
                              "child":  {
                                "type": "imageAsset",
                                "imageUrl": "assets/nike7.png",
                                "width": 150.0,
                                "height": 100.0,
                                "fit": "contain"

                              }
                            }
                          },

                          {
                            "type": "padding",
                            "top": 0.0,
                            "bottom": 0.0,
                            "left": 0.0,
                            "right": 0.0,
                            "child": {
                              "type": "column",
                              "mainalignment": "center",
                              "crossalignment": "start",
                              "children": [
                                {
                                  "type": "container",
                                  "height":50.0,
                                  "width":150.0,
                                  "decoration": {
                                    "color": "#00000000",
                                    "opacity": 0.0,
                                    "borderColor": "#00000000",
                                    "borderRadius": {
                                      "topRight": 5,
                                      "bottomRight": 5,
                                      "topLeft": 5,
                                      "bottomLeft": 5
                                    }
                                  },
                                  "child":
                                  {
                                    "type": "expanded",
                                    "child":  {
                                      "type": "text",
                                      "label": "Men’s shoes dfghjkl;'fghjkl",
                                      "textColor": "#FFFFFF",
                                      "fontSize": 14,
                                      "fontWeight": "bold",
                                      "overflow": "ellipsis"
                                    }
                                  }
                                },

                                {
                                  "type": "container",
                                  "height":50.0,
                                  "width":150.0,
                                  "decoration": {
                                    "color": "#00000000",
                                    "opacity": 0.0,
                                    "borderColor": "#00000000",
                                    "borderRadius": {
                                      "topRight": 5,
                                      "bottomRight": 5,
                                      "topLeft": 5,
                                      "bottomLeft": 5
                                    }
                                  },
                                  "child":
                                  {
                                    "type": "text",
                                    "label": "Men’s shoes",
                                    "textColor": "#FFFFFF",
                                    "fontSize": 14,
                                    "fontWeight": "bold",
                                    "overflow": "ellipsis"
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
                                    "label": "\$299.3",
                                    "textColor": "#FFFFFF",
                                    "fontSize": 20,
                                    "fontWeight": "bold",
                                    "overflow": "ellipsis"
                                  }
                                }
                              ]
                            }
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
                "bottom":0.0,
                "left": 15.0,
                "right": 15.0,
                "child":{
                  "type": "row",
                  "mainalignment": "spaceBetween",
                  "crossalignment": "center",
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
                        "label": "LifeStyle",
                        "textColor": "#000000",
                        "fontSize": 16,
                        "fontWeight": "bold",
                        "overflow": "ellipsis"
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
                        "type": "textButton",
                        "child": {
                          "type": "text",
                          "label": "See More",
                          "textColor": "#966ED7",
                          "fontSize": 12,
                          "fontWeight": "bold",
                          "overflow": "ellipsis"
                        },
                        "tag": "goToViewMore",
                        "id": 55
                      }
                    }
                  ]
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
                  "type":"container",
                  "height": 205.0,
                  "width": 500.0,
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
                    "scrollDirection":"horizontal",
                    "children":  [



                      {
                        "type": "container",
                        "height": 165.0,
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
                            "mainalignment": "spaceBetween",
                            "crossalignment": "start",
                            "children": [

                              {
                                "type": "padding",
                                "top": 3.0,
                                "bottom": 0.0,
                                "left": 10.0,
                                "right": 0.0,
                                "child": {
                                  "type": "container",
                                  "height": 110.0,
                                  "width": 130.0,
                                  "decoration": {
                                    "color": "cardColor",
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
                                    "crossalignment": "start",
                                    "children": [

                                      {
                                        "type": "padding",
                                        "top": 0.0,
                                        "bottom": 0.0,
                                        "left": 100.0,
                                        "right": 0.0,
                                        "child":  {
                                          "type": "icon",
                                          "iconData": "favorite_border",
                                          "size": 20.0,
                                          "color": "#9CA0AF"
                                        }
                                      },
                                      {
                                        "type": "padding",
                                        "top": 0.0,
                                        "bottom": 0.0,
                                        "left": 0.0,
                                        "right": 0.0,
                                        "child":  {
                                          "type": "container",
                                          "height": 68.0,
                                          "width": 120.0,
                                          "decoration": {
                                            "color": "#000000",
                                            "borderColor": "#00000000",
                                            "opacity": 0.0,
                                            "borderRadius": {
                                              "topRight": 3,
                                              "bottomRight": 3,
                                              "topLeft": 3,
                                              "bottomLeft": 3
                                            }
                                          },
                                          "child":  {
                                            "type": "imageAsset",
                                            "imageUrl": "assets/nike2.png",
                                            "width": 0.0,
                                            "height": 0.0,
                                            "fit": "contain"
                                          }
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
                                  "type":"container",
                                  "height": 38.0,
                                  "width": 120.0,
                                  "decoration": {
                                    "color": "cardColor",
                                    "borderColor": "#00000000",
                                    "opacity": 0.0,
                                    "borderRadius": {
                                      "topRight": 3,
                                      "bottomRight": 3,
                                      "topLeft": 3,
                                      "bottomLeft": 3
                                    }
                                  },
                                  "child": {
                                    "type": "text",
                                    "label": "Nike Air Max 260",
                                    "textColor": "#9CA0AF",
                                    "fontSize": 12,
                                    "fontWeight": "bold",
                                    "overflow": "ellipsis"
                                  }
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
                                        "label": "\$299.3",
                                        "textColor": "#000000",
                                        "fontSize": 18,
                                        "fontWeight": "bold",
                                        "overflow": "ellipsis"
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
                                              "fontWeight": "normal",
                                              "overflow": "ellipsis"
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
                          "color": "#000000"
                        }
                      },

                      {
                        "type": "container",
                        "height": 165.0,
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
                            "mainalignment": "spaceBetween",
                            "crossalignment": "start",
                            "children": [

                              {
                                "type": "padding",
                                "top": 3.0,
                                "bottom": 0.0,
                                "left": 10.0,
                                "right": 0.0,
                                "child": {
                                  "type": "container",
                                  "height": 110.0,
                                  "width": 130.0,
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
                                    "crossalignment": "start",
                                    "children": [

                                      {
                                        "type": "padding",
                                        "top": 0.0,
                                        "bottom": 0.0,
                                        "left": 100.0,
                                        "right": 0.0,
                                        "child":  {
                                          "type": "icon",
                                          "iconData": "favorite_border",
                                          "size": 20.0,
                                          "color": "#9CA0AF"
                                        }
                                      },
                                      {
                                        "type": "padding",
                                        "top": 0.0,
                                        "bottom": 0.0,
                                        "left": 0.0,
                                        "right": 0.0,
                                        "child":  {
                                          "type": "container",
                                          "height": 68.0,
                                          "width": 120.0,
                                          "decoration": {
                                            "color": "#000000",
                                            "borderColor": "#00000000",
                                            "opacity": 0.0,
                                            "borderRadius": {
                                              "topRight": 3,
                                              "bottomRight": 3,
                                              "topLeft": 3,
                                              "bottomLeft": 3
                                            }
                                          },
                                          "child":  {
                                            "type": "imageAsset",
                                            "imageUrl": "assets/nike2.png",
                                            "width": 0.0,
                                            "height": 0.0,
                                            "fit": "contain"
                                          }
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
                                  "type":"container",
                                  "height": 38.0,
                                  "width": 120.0,
                                  "decoration": {
                                    "color": "#000000",
                                    "borderColor": "#00000000",
                                    "opacity": 0.0,
                                    "borderRadius": {
                                      "topRight": 3,
                                      "bottomRight": 3,
                                      "topLeft": 3,
                                      "bottomLeft": 3
                                    }
                                  },
                                  "child": {
                                    "type": "text",
                                    "label": "Nike Air Max 260",
                                    "textColor": "#9CA0AF",
                                    "fontSize": 12,
                                    "fontWeight": "bold",
                                    "overflow": "ellipsis"
                                  }
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
                                        "label":  "\$299.3",
                                        "textColor": "#000000",
                                        "fontSize": 18,
                                        "fontWeight": "bold",
                                        "overflow": "ellipsis"
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
                                              "fontWeight": "normal",
                                              "overflow": "ellipsis"
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