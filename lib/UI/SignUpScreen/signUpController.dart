import 'dart:convert';

import 'package:get/get.dart';





class SignUpController extends GetxController {



  loadSignUpScreenUI() {
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
      "decoration": {
        "color": "#f6f6f6",
        "opacity": 1.0
      },
      "child": {
      "type": "column",
      "mainalignment": "spaceBetween",
      "crossalignment": "center",
      "children": [
      
      {
      "type": "sizedBox",
      "height": 50.0,
      "width": 0.0
      },
      {
        "type": "imageAsset",
        "imageUrl": "assets/logo2.png",
        "width": 200.0,
        "height": 120.0,
        "fit": "contain"
       },
       
       {
        "type": "container",
        "height": 500.0,
        "width": 400.0,
        "decoration": {
        "color": "#2C2B37",
         "opacity": 1.0,
        "borderRadius": {
          "topRight": 25,
          "bottomRight": 0.0,
          "topLeft": 25,
          "bottomLeft": 0
        }
      },
        "child": {
         "type": "column",
          "mainalignment": "start",
          "crossalignment": "start",
          "children": [
           
           {
            "type": "padding",
            "top": 20.0,
            "bottom": 0.0,
            "left": 20.0,
            "right": 0.0,
            "child": 
                {
                  "type": "text",
                  "label": "Sign Up",
                  "textColor": "#FFFFFF",
                  "fontSize": 26,
                  "fontWeight": "bold"
                }
              },
             {
        "type": "padding",
        "top": 20.0,
        "bottom": 0.0,
        "left": 30.0,
        "right": 30.0,
        "child":   {
         "type": "container",
        "height": 42.0,
        "width": 350.0,
        "child": 
          {
          "type":"textField",
          "label": "Enter Your Name",
          "placeholder":"Enter your Email Address",
          "obscureText":false,
          "prefixIcon": "",
          "suffixIcon": "",
          "prefixColor": "#9CA0AF99",
          "suffixColor": "#9CA0AF99",
          "fieldOpacity": 0.0,
          "radius": 10.0,
          "keyboardType": "text",
          "textInputAction": "next",
          "colorName": "#444355"
           },
           "decoration": {
          "color": "#00000000",
          "borderColor": "#00000000",
          "borderRadius": {
          "topRight": 10,
          "bottomRight": 10.0,
          "topLeft": 10,
          "bottomLeft": 10
        }
      }
    }
  },
              
         {
        "type": "padding",
        "top": 20.0,
        "bottom": 0.0,
        "left": 30.0,
        "right": 30.0,
        "child":   {
         "type": "container",
        "height": 42.0,
        "width": 350.0,
        "child": 
          {
          "type":"textField",
          "label": "Enter Your Email",
          "placeholder":"Enter your Email Address",
          "obscureText":false,
          "prefixIcon": "",
          "suffixIcon": "",
          "prefixColor": "#9CA0AF99",
          "suffixColor": "#9CA0AF99",
          "fieldOpacity": 0.0,
          "radius": 10.0,
          "keyboardType": "text",
          "textInputAction": "next",
          "colorName": "#444355"
           },
           "decoration": {
          "color": "#00000000",
          "borderColor": "#00000000",
          "borderRadius": {
          "topRight": 10,
          "bottomRight": 10.0,
          "topLeft": 10,
          "bottomLeft": 10
        }
      }
    }
  },
            {
        "type": "padding",
        "top": 20.0,
        "bottom": 0.0,
        "left": 30.0,
        "right": 30.0,
        "child":   {
         "type": "container",
        "height": 42.0,
        "width": 350.0,
        "child": 
          {
          "type":"textField",
          "label": "Enter Your Password",
          "placeholder":"Enter your Email Address",
          "obscureText":true,
          "prefixIcon": "",
          "suffixIcon": "",
          "prefixColor": "#9CA0AF99",
          "suffixColor": "#9CA0AF99",
          "fieldOpacity": 0.0,
          "radius": 10.0,
          "keyboardType": "text",
          "textInputAction": "done",
          "colorName": "#444355"
           },
           "decoration": {
          "color": "#00000000",
          "borderColor": "#00000000",
          "borderRadius": {
          "topRight": 10,
          "bottomRight": 10.0,
          "topLeft": 10,
          "bottomLeft": 10
        }
      }
    }
  },
  
 
              
          {
            "type": "padding",
             "top":20.0,
            "bottom":0.0,
            "left":30.0,
            "right": 30.0,
            "child": {
           "type": "buttonContainer",
           "height": 50.0,
           "width": 350.0,
           "child": {
            "type": "padding",
             "top":15.0,
            "bottom":0.0,
            "left":0.0,
            "right": 0.0,
            "child": {
             "type": "text",
            "label": "Sign Up",
            "textColor": "#F6F6F6",
            "fontSize": 14,
            "fontWeight": "Bold"   
            }
           },
           "tag": "goToHomeFromSignUp",
               "decoration":{
                  "color":"#24CF9C",
                   "opacity": 1.0,
                  "borderColor": "00000000",
                  "borderRadius":{
                     "topRight":10,
                     "bottomRight": 10,
                     "topLeft": 10,
                     "bottomLeft": 10
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
            "type": "row",
            "mainalignment": "center",
            "crossalignment": "center",
            "children": [
            {
              "type": "text",
            "label": "Have an Account ?",
            "textColor": "#F6F6F6",
            "fontSize": 12,
            "fontWeight": "Bold"   
            },
           
            
            {
            "type": "textButton",
            "tag": "signIn",
            "child": {
             "type": "text",
            "label": "Sign in",
            "textColor": "#24CF9C",
            "fontSize": 14,
            "fontWeight": "Bold"   
            }
            }
             ]
           },
           
          
              {
                "type":"sizedBox",
                "height":20.0,
                "width":0.0
             },
            
             {
                  "type":"row",
                  "mainalignment":"center",
                  "crossalignment":"center",
                  "children":[
                     {
                        "type":"container",
                        "height":40.0,
                        "width":40.0,
                         "decoration":{
                              "color":"#F6F6F6",
                              "borderColor": "00000000",
                              "borderRadius":{
                                 "topRight":10,
                                 "bottomRight": 10,
                                 "topLeft": 10,
                                 "bottomLeft": 10
                            }
                          },
                        "child":{
                           "type":"center",
                           "child":{
                              "type":"image",
                              "imageUrl":"https://static-00.iconduck.com/assets.00/google-icon-2048x2048-czn3g8x8.png",
                              "width":20.0,
                              "height":20.0,
                              "fit" : "cover",
                              "tag": "signInWithGoogle"
                           }
                        }
                        
                     },
                     {
                        "type":"sizedBox",
                        "height":1.0,
                        "width":20.0
                     },
                     {
                        "type":"container",
                        "height":40.0,
                        "width":40.0,
                         "decoration":{
                              "color":"#F6F6F6",
                              "borderColor": "00000000",
                              "borderRadius":{
                                 "topRight":10,
                                 "bottomRight": 10,
                                 "topLeft": 10,
                                 "bottomLeft": 10
                            }
                          },
                        "child":{
                           "type":"center",
                           "child":{
                              "type":"image",
                              "imageUrl":"https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/2021_Facebook_icon.svg/2048px-2021_Facebook_icon.svg.png",
                              "width":20.0,
                              "height":20.0,
                              "fit" : "cover",
                              "tag": "signInWithFaceBook"
                           }
                        }
                     },
                     {
                        "type":"sizedBox",
                        "height":1.0,
                        "width":20.0
                     },
                      {
                        "type":"container",
                        "height":40.0,
                        "width":40.0,
                         "decoration":{
                              "color":"#F6F6F6",
                              "borderColor": "00000000",
                              "borderRadius":{
                                 "topRight":10,
                                 "bottomRight": 10,
                                 "topLeft": 10,
                                 "bottomLeft": 10
                            }
                          },
                        "child":{
                           "type":"center",
                           "child":{
                              "type":"image",
                              "imageUrl":"https://m.media-amazon.com/images/I/31zRjKBu0BL._SX300_SY300_QL70_FMwebp_.jpg",
                              "width":20.0,
                              "height":20.0,
                              "fit" : "cover",
                              "tag": "signInWithFaceBook"
                           }
                        }
                     }
                  ]
               }
              
         
            
            
               
          
       
      
          ]
        
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