import 'dart:convert';

import 'package:get/get.dart';





class Home2Controller extends GetxController {


  loadHome2ScreenUI() {
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
        "height": 30.0,
        "width": 0.0
    },
            
        {
         "type": "stickyHeader",
         "header": {
         "type": "padding",
          "top": 0.0,
          "bottom": 0.0,
          "left": 10.0,
          "right": 10.0,
         "child": {
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
   "content": 
 {
"type": "column",
 "mainalignment": "spaceEvenly",
 "crossalignment": "start",
"children": [

   {
      "type" : "padding",
        "top": 0.0,
        "bottom": 0.0,
        "left": 15.0,
        "right": 0.0,
       "child": {
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
          "child": {
         "type": "text",
        "label": "New Collection",
        "textColor": "#FFFFFF",
        "fontSize": 32,
        "fontWeight": "bold"
         }
       },
        
        {
        "type": "container",
        "height": 35.0,
        "width": 70.0,
         "decoration": {
        "color": "#FFFFFF",
        "opacity": 0.1,
        "borderColor": "#00000000",
        "borderRadius": {
          "topRight": 0,
          "bottomRight": 0,
          "topLeft": 20,
          "bottomLeft": 20
                    }
                  },
              "child": {
              "type": "icon",
              "iconData": "search",
              "color": "#9CA0AF99",
              "size": 25.0
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
              "type": "text",
              "label": "Explore the new collection of sneakers",
              "textColor": "#9CA0AF",
              "fontSize": 12,
              "fontWeight": "bold"
            }
          },
            {
              "type": "sizedBox",
              "height": 20.0,
              "width": 0.0
              },
              
               {
                   "type": "container",
                    "height": 284.0,
                    "width": 600.0,
                     "decoration":{
               "color":"#00000000",
                "opacity": 0.0,
               "borderColor":"#00000000",
                  "borderRadius":{
                     "topRight":0,
                     "bottomRight":0,
                     "topLeft":0,
                     "bottomLeft":0
                          }
                       },
                   
                   "child":  {
                    "type": "listViewBuilder",
                    "scrollDirection":"horizontal",
                    "itemCount": 8,
                     "height": 300.0,
                    "child":  {
                    "type": "container",
                    "height": 400.0,
                    "width":500.0,
                    "decoration": {
                "color": "#00000000",
                "opacity": 1.0,
                "borderColor": "#00000000",
                "borderRadius": {
                  "topRight": 10,
                  "bottomRight": 10,
                  "topLeft": 10,
                  "bottomLeft": 10
                }
              },
                    "child": {
                      "type": "carousel_slider",
                      "options": {
                        "viewportFraction": 0.5,
                        "initialPage": 0,
                        "enableInfiniteScroll": true,
                        "reverse": false,
                        "autoPlay": true,
                        "autoPlayInterval": 3000,
                        "autoPlayAnimationDuration": 800,
                        "autoPlayCurve": "elasticIn",
                        "enlargeCenterPage": true,
                        "scrollDirection": "horizontal"
                      },
                      "items": [                      
                       {
                      "type":"container",
                      "height":285.0,
                      "width":800.0,
                       "decoration":{
                       "color":"#FFFFFF",
                       "opacity": 0.5,
                       "borderColor":"#00000000",
                      "borderRadius":{
                         "topRight":0,
                         "bottomRight":0,
                         "topLeft":0,
                         "bottomLeft":0
                          }
                       },
                      "child":{
                      "type": "column",
                     "mainalignment": "spaceEvenly",
                     "crossalignment": "start",
                      "children": [
                      
                      {
                      "type": "padding",
                       "top": 10.0,
                      "bottom": 0.0,
                      "left": 10.0,
                      "right": 10.0,
                      "child": {
                      "type": "row",
                      "mainalignment": "spaceEvenly",
                     "crossalignment": "start",
                      "children": [
                      
                              
                  {
                "type": "container",
                "height": 40.0,
                "width": 100.0,
                "decoration": {
                "color": "#FFFFFF",
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
                "left": 5.0,
                "right": 0.0,
                "child": {
                  "type": "text",
                  "label": "4.8",
                  "textColor": "#9CA0AF",
                  "fontSize": 16,
                  "fontWeight": "normal"
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
                "child": {
                  "type": "container",
                  "height": 50.0,
                  "width": 50.0,
                  "child": {
                      "type": "iconButton",
                      "child": {
                        "type": "icon",
                        "iconData": "favorite_border",
                        "color": "#AFAFAF",
                        "size": 20.0
                      },
                      "tag": "notification"
                    
                  },
                  "decoration": {
                    "color": "#FFFFFF",
                     "opacity": 0.1,
                    "borderColor": "#00000000",
                    "borderRadius": {
                      "topRight": 50,
                      "bottomRight": 50,
                      "topLeft": 50,
                      "bottomLeft": 50
                    }
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
                "left": 20.0,
                "right": 0.0,
               "child": {
                 "type": "imageAsset",
                "imageUrl": "assets/nike5.png",
                "width": 156.0,
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
                "top": 10.0,
                "bottom": 0.0,
                "left": 10.0,
                "right": 0.0,
               "child":
               
               {
                  "type": "text",
                  "label": "\$290.0",
                  "textColor": "#FFFFFF",
                  "fontSize": 20,
                  "fontWeight": "bold"
                  }
                  }
                      
                       ]
                      },
                        "decoration":{
                         "color":"#FFFFFF",
                         "opacity": 0.1,
                         "borderColor": "#00000000",
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
               "color": "#FFFFFF",
                "opacity": 0.0,
               "borderColor": "#00000000"
               }
              }    
             }
            },
              {
              "type": "sizedBox",
              "height": 20.0,
              "width": 0.0
              },
              
                {
                "type": "padding",
                 "top": 0.0,
                "bottom": 0.0,
                "left": 15.0,
                "right": 0.0,
                "child":  {
                "type": "listView",
                "scrollDirection":"horizontal",
               "children": [
            {
                      "type": "container",
                      "height": 160.0,
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
                      "child":   {
                        "type": "imageAsset",
                        "imageUrl": "assets/nike2.png",
                        "width": 120.0,
                        "height": 70.0,
                        "fit": "fit"
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
                          "label": "\$99.9",
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
                      "height": 160.0,
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
                      "child":   {
                        "type": "imageAsset",
                        "imageUrl": "assets/nike2.png",
                        "width": 120.0,
                        "height": 70.0,
                        "fit": "fit"
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
                          "label": "\$99.9",
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
},

      {
         "type": "padding",
         "top": 0.0,
         "bottom": 0.0,
         "left": 0.0,
         "right": 0.0,
         "child": {
         "type": "container",
         "height": 720.0,
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
          "type": "gridViewBuilder",
          "itemCount": 10,
          "crossAxisCount": 2,
          "mainAxisExtent": 200.0,
          "mainAxisSpacing": 10.0,
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
              "tag": "goToDetails2Screen",
              "height": 300.0,
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
              "color": "#FFFFFF",
              "opacity": 0.1,
              "borderColor": "#00000000",
                    "borderRadius": {
                      "topRight": 10,
                      "bottomRight": 10,
                      "topLeft": 10,
                      "bottomLeft": 10
                    }
                  }
                 }
                }
              } 
             }    
            }
          ]
         }
       },
       {
       "type": "padding",
         "top": 10.0,
            "bottom":0.0,
            "left": 10.0,
            "right": 10.0,
       "child":  {
        "type":"container",
         "height": 140.0,
           "width": 400.0,
           "decoration": {
                    "color": "#FFFFFF",
                    "imageUrl": "assets/uiCont3.png",
                    "opacity": 1.0,
                    "borderColor": "00000000",
                    "borderRadius": {
                      "topRight": 10,
                      "bottomRight": 10,
                      "topLeft": 10,
                      "bottomLeft": 10
                    }
                   },
            "child": {
           "type": "row",
           "mainalignment": "spaceEvenly",
           "crossalignment": "start",
           "children": [
            {
            "type": "padding",
             "top": 30.0,
            "bottom": 0.0,
            "left": 10.0,
            "right": 0.0,
            "child":  {
              "type": "imageAsset",
              "imageUrl": "assets/nike4.png",
              "width": 120.0,
              "height": 70.0,
              "fit": "cover"
             } 
            },
            
           {
            "type": "padding",
            "top": 0.0,
            "bottom": 0.0,
            "left": 10.0,
            "right": 0.0,
            "child": {
            "type": "column",
            "mainalignment": "start",
            "crossalignment": "start",
            "children": [
            {
              "type": "sizedBox",
              "height": 8.0,
              "width": 0.0
              },
           
          {
            "type": "padding",
            "top": 5.0,
            "bottom": 0.0,
            "left": 0.0,
            "right": 0.0,
            "child": 
            {
                  "type": "text",
                  "label": "Nike Go FlyEase",
                  "textColor": "#000000",
                  "fontSize": 14,
                  "fontWeight": "bold"
                }
              },
        

               
              {
              "type": "sizedBox",
              "height": 5.0,
              "width": 0.0
              },
            {
            "type": "row",
            "mainalignment": "spaceEvenly",
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
                  "label": "Size: 8 Us",
                  "textColor": "#000000",
                  "fontSize": 12,
                  "fontWeight": "normal"
                }     
              }
            ]
          },
     {
        "type": "sizedBox",
        "height": 20.0,
        "width": 0.0
        },
        
        {
        "type": "row",
         "mainalignment": "spaceEvenly",
         "crossalignment": "start",
         "children" : [
        {
           "type": "padding",
             "top": 0.0,
            "bottom":0.0,
            "left":0.0,
            "right": 0.0,
            "child": {
            "type": "text",
            "label": "\$290.0",
            "textColor": "#000000",
            "fontSize": 18,
            "fontWeight": "bold"   
           }
         },
            {
        "type": "sizedBox",
        "height": 0.0,
        "width": 30.0
        },
      
   {
    "type": "container",
     "height": 25.0,
     "width": 85.0,
     "decoration":{
      "color":"#00000000",
      "opacity": 0.0,
      "borderColor": "00000000",
      "borderRadius":{
         "topRight":5,
         "bottomRight": 5,
         "topLeft": 5,
         "bottomLeft": 5
    }
  },
    "child":  {
    "type": "row",
    "mainalignment": "spaceBetween",
    "crossalignment": "spaceBetween",
    "children": [
          {
            "type": "padding",
            "top":0.0,
            "bottom":0.0,
            "left": 0.0,
            "right": 0.0,
            "child": {
           "type": "buttonContainer",
           "height": 25.0,
           "width": 25.0,
           "child": {
            "type": "padding",
            "top": 0.0,
            "bottom":0.0,
            "left":0.0,
            "right": 0.0,
            "child": {
             "type": "icon",
                "iconData": "remove",
                "size": 20.0,
                "color": "#000000"
            }
          },
           "tag": "",
               "decoration":{
                  "color":"#E6D6FF",
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
           },
          
           {
           "type": "container",
           "height": 25.0,
           "width": 25.0,
            "decoration":{
            "color":"#AA7EEF",
            "opacity": 1.0,
            "borderColor": "00000000",
            "borderRadius":{
               "topRight":25,
               "bottomRight": 25,
               "topLeft": 25,
               "bottomLeft": 25
                }
              },
           "child":  {
           "type": "padding",
             "top": 2.0,
            "bottom":0.0,
            "left":0.0,
            "right": 0.0,
            "child": {
            "type": "text",
            "label": "1",
            "textColor": "#000000",
            "fontSize": 12,
            "fontWeight": "Bold"   
            }
           } 
          },
         
            {
            "type": "padding",
             "top":0.0,
            "bottom":0.0,
            "left": 0.0,
            "right": 0.0,
            "child": {
           "type": "buttonContainer",
           "height": 25.0,
           "width": 25.0,
           "child": {
            "type": "padding",
             "top": 0.0,
            "bottom":0.0,
            "left":0.0,
            "right": 0.0,
            "child": {
             "type": "icon",
              "iconData": "add",
              "size": 20.0,
              "color": "#000000"
            }
           },
           "tag": "",
               "decoration":{
                 "color":"#E6D6FF",
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
            ]
           }  
          },
            {
            "type": "padding",
             "top": 5.0,
            "bottom":0.0,
            "left": 0.0,
            "right": 0.0,
            "child": {
             "type": "icon",
              "iconData": "delete1",
              "size": 20.0,
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