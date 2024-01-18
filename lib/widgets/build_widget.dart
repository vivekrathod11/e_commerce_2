import 'dart:ui';

import 'package:e_commerce_2/ConfigController/configController.dart';
import 'package:e_commerce_2/Navigation/MainNavigationScreen.dart';
import 'package:e_commerce_2/UI/CartScreen/cartScreen.dart';
import 'package:e_commerce_2/UI/DetailsScreen/detailsScreen.dart';
import 'package:e_commerce_2/UI/HomeScreen/homeScreen.dart';
import 'package:e_commerce_2/UI/SignInScreen/signInPage.dart';
import 'package:e_commerce_2/UI/SignUpScreen/signUpScreen.dart';
import 'package:e_commerce_2/UI2/cartScreen/cartScreen.dart';
import 'package:e_commerce_2/UI2/detailsScreen/detailsScreen.dart';
import 'package:e_commerce_2/UI2/homeScreen/homeScreen.dart';
import 'package:e_commerce_2/UI2/signInnScreen/signInnPage.dart';
import 'package:e_commerce_2/UI2/signUpScreen/signUpPage.dart';
import 'package:e_commerce_2/Ui3/CartSCreen/cartScreen.dart';
import 'package:e_commerce_2/Ui3/DetailsScreen/detailsScreen.dart';
import 'package:e_commerce_2/Ui3/HomeScreen/homeScreen.dart';
import 'package:e_commerce_2/Ui3/NavBarClass.dart';
import 'package:e_commerce_2/Ui3/SignInScreen/signInScreen.dart';
import 'package:e_commerce_2/Ui3/SignUpScreen/signUpSCreen.dart';
import 'package:e_commerce_2/Ui3/viewMore/viewScreen.dart';
import 'package:e_commerce_2/appColors/appColors.dart';
import 'package:e_commerce_2/appColors/appColorsAll.dart';
import 'package:e_commerce_2/json_data/json_controller.dart';
import 'package:e_commerce_2/utils/customIcons.dart';
import 'package:e_commerce_2/widgets/CustomPageView.dart';
import 'package:e_commerce_2/widgets/custom_button.dart';
import 'package:e_commerce_2/widgets/custom_checkbox.dart';
import 'package:e_commerce_2/widgets/custom_container_widget.dart';
import 'package:e_commerce_2/widgets/custom_dotted_line.dart';
import 'package:e_commerce_2/widgets/custom_text.dart';
import 'package:e_commerce_2/widgets/custom_text_field.dart';
import 'package:e_commerce_2/widgets/pageview_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flip_card/flip_card.dart';
import 'package:swipable_stack/swipable_stack.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:sliver_snap/sliver_snap.dart';
import 'package:badges/badges.dart' as badges;
import 'package:sticky_headers/sticky_headers.dart';
import 'package:flutter_sticky_widgets/flutter_sticky_widgets.dart';




class BuildWidget extends StatefulWidget {
  final Map<String, dynamic> uiConfig;
  BuildWidget(this.uiConfig);

  @override
  State<BuildWidget> createState() => _BuildWidgetState();
}

class _BuildWidgetState extends State<BuildWidget> {
  JsonController jsonController = JsonController();
  ConfigController configController = Get.put(ConfigController());

  PageController _pageController = PageController(initialPage: 0);
  int badgeValue = 3;
  String? selectedValue;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return buildWidget(widget.uiConfig, context);

  }

  buildWidget(Map<String, dynamic> widgetData, BuildContext context) {



    final widgetType = widgetData["type"];

    switch (widgetType) {
      case "singleChildScrollView":
        return SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: buildWidget(widgetData["child"], context),
        );
      case "center":
        return Center(
          child: buildWidget(widgetData["child"], context),
        );




      case "container":
        double width = widgetData['width'] ?? 0.0;
        double height = widgetData['height'] ?? 0.0;

        if(width > 450) {
          width = MediaQuery.of(context).size.width;
        }

        if(height > 750) {
          height = MediaQuery.of(context).size.height;
        }


        final BoxDecoration decoration = _buildDecorationFromJson(widgetData['decoration'] ?? {});
        final Widget? child = buildWidget(widgetData["child"] ?? {}, context);


        return CustomContainerWidget(
          height: height,
          width: width,
          decoration: decoration,
          child: child,
          transform: widgetData["transform"],
          opacity: Opacity(opacity: 0.0)
        );

      case "buttonContainer":
        double width = widgetData['width'] ?? 0.0;
        if(width > 450) {
          width = MediaQuery.of(context).size.width;
        }
        double height = widgetData['height'] ?? 0.0;
        if(height > 750) {
          height = MediaQuery.of(context).size.height;
        }


        final BoxDecoration decoration = _buildDecorationFromJson(widgetData['decoration'] ?? {},);
        final Widget? child = buildWidget(widgetData["child"] ?? {}, context);

        return GestureDetector(
          onTap: (){
          buttonActions(widgetData["tag"], context);
          },
          child: CustomContainerWidget(
            height: height,
            width: width,
            decoration: decoration,
            child: child,
          ),
        );


      case "resizeContainer":
        double width = widgetData['width'] ?? 0.0;
        double height = widgetData['height'] ?? 0.0;

        if (width > 400.0 && MediaQuery.of(context).size.width < width) {
          width = MediaQuery.of(context).size.width / 1.2;
        }

        // Check if the specified height exceeds a certain value
        if (height > 200.0 && MediaQuery.of(context).size.height < height) {
          height = MediaQuery.of(context).size.height / 1.2;
        }



        final BoxDecoration decoration = _buildDecorationFromJson(widgetData['decoration'] ?? {},);
        final Widget? child = buildWidget(widgetData["child"] ?? {}, context);

        return CustomContainerWidget(
          height: height,
          width: width,
          decoration: decoration,
          child: child,
        );


      case "row":
        return Row(
          mainAxisAlignment: mainAxisAlignment(widgetData["mainalignment"]),
          crossAxisAlignment: crossAxisAlignment(widgetData["crossalignment"]),
          children: buildChildren(widgetData["children"], context),
        );


      case "column":
        return Column(
          mainAxisAlignment: mainAxisAlignment(widgetData["mainalignment"]),
          crossAxisAlignment: crossAxisAlignment(widgetData["crossalignment"]),
          children: buildChildren(widgetData["children"], context),
        );


      case "stack":
        return Stack(
          //alignment: parseAlignment(widgetData["alignment"]),
          children: buildChildren(widgetData["children"], context),
        );


      case "Positioned":
        return Positioned(
          bottom: widgetData["bottom"],
          right: widgetData["right"],
          top: widgetData["top"],
          left: widgetData["left"],
          child: buildWidget(widgetData["child"], context),
        );



      case "drawer":
        return  ;


      case "image":
          final String imageUrl = widgetData['imageUrl'];
          final double width = widgetData['width'] ?? 50.0;
          final double height = widgetData['height'] ?? 50.0;
          BoxFit fit =  parseBoxFit(widgetData["fit"]);

          return GestureDetector(
            onTap: (){
              buttonActions(widgetData["tag"], context);
              },
            child: Image.network(
              imageUrl,
              width: width,
              height: height,
              fit : fit,
            ),
          );

      case "imageAsset":
        final String imageUrl = widgetData['imageUrl'];
        final double width = widgetData['width'] ?? 50.0;
        final double height = widgetData['height'] ?? 50.0;
        BoxFit fit =  parseBoxFit(widgetData["fit"]);

        return Image.asset(

          imageUrl,
          width: width,
          height: height,
          fit : fit,
        );


      case "text":
        return CustomText(
          widgetData["label"],
          color: Color(int.parse(widgetData["textColor"].substring(1, 7), radix: 16) + 0xFF000000),
          fontSize: widgetData["fontSize"].toDouble(),
          fontWeight: parseFontWeight(widgetData["fontWeight"]),
          //overflow: parseTextOverflow(widgetData["overflow"]),
        );


      case "listview":
        return ListView(
          scrollDirection: widgetData["scrollDirection"] == "horizontal"
              ? Axis.horizontal
              : Axis.vertical,
          children: buildChildren(widgetData["children"], context),
        );

      case "expanded":
        return Expanded(
          child: buildWidget(widgetData["child"], context),
        );


      case "listViewBuilder":
        return CustomContainerWidget(
          height: widgetData["height"],
          child: ListView.builder(
            scrollDirection: widgetData["scrollDirection"] == "horizontal"
                ? Axis.horizontal
                : Axis.vertical,
            itemCount: widgetData["itemCount"],
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: (){
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: CustomContainerWidget(

                  child: buildWidget(widgetData["child"], context),
                ),
              );
            },
          ),
        );

      case "gridViewBuilder":
        return Expanded(
          child: CustomContainerWidget(
              opacity: widgetData["opacity"],
            child: GridView.builder(
             // physics:  widgetData["physics"],
              itemCount: widgetData["itemCount"],
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: widgetData["crossAxisCount"],
                  mainAxisExtent: widgetData["mainAxisExtent"],
                  mainAxisSpacing: widgetData["mainAxisSpacing"],
                  crossAxisSpacing: widgetData["crossAxisSpacing"],

                ),
                itemBuilder: (context,index){
                  return CustomContainerWidget(
                    opacity: widgetData["opacity"],
                     child: buildWidget(widgetData["child"], context),
                  );
                })
          ),
        );

      case "staggered":
        ScrollController? controller = widgetData["controller"];

        StaggeredTile buildStaggeredTile(Map<String, dynamic> tileData) {
          String type = tileData["type"];
          switch (type) {
            case "fixed":
              int mainAxisCellCount = tileData["mainAxisCellCount"];
              int crossAxisCellCount = tileData["crossAxisCellCount"];
              return StaggeredTile.count(mainAxisCellCount, crossAxisCellCount.toDouble());

            case "dynamic":
              double height = tileData["tileHeight"];
              double aspectRatio = tileData["aspectRatio"];
              int mainAxisCellCount = 8;
              int crossAxisCellCount = 8;
              return StaggeredTile.count( mainAxisCellCount, crossAxisCellCount.toDouble());

            default:
              return StaggeredTile.count(1, 1); // Default to a fixed size if the type is unknown
          }
        }

        // Ensure that index is within the bounds of staggeredTiles
        List<StaggeredTile> buildStaggeredTiles(List<dynamic> tileBuilder) {
          return tileBuilder.map((tileData) {
            return buildStaggeredTile(tileData as Map<String, dynamic>);
          }).toList();
        }

        List<StaggeredTile> staggeredTiles = buildStaggeredTiles(widgetData["tileBuilder"]);

        return StaggeredGridView.countBuilder(
          controller: controller,
          crossAxisCount: widgetData["crossAxisCount"],
          crossAxisSpacing: widgetData["crossAxisSpacing"],
          mainAxisSpacing: widgetData["mainAxisSpacing"],
          itemCount: widgetData["itemCount"],
          itemBuilder: (context, index) {
            return buildWidget(widgetData["stagBuilder"], context);
          },
          staggeredTileBuilder: (index) {
            if (index < staggeredTiles.length) {
              return StaggeredTile.count(1, index.isEven ? 1.5 : 1);
            } else {
              return StaggeredTile.count(1, index.isEven ? 1.5 : 1);
            }
          },
        );





      case "flip":
         FlipDirection direction = parseFlipDirection(widgetData["direction"]);
         CardSide side = parseCardSide(widgetData["side"]);
        return FlipCard(
          front: buildWidget(widgetData["frontChild"], context),
           back:  buildWidget(widgetData["backChild"], context),

         // direction: FlipDirection.HORIZONTAL,
         direction: direction,
          side: side,
          fill: Fill.fillBack,
        );

      case "swipableStack":
        //SwipeDirection direction = parseSwipeDirection(widgetData["direction"]);
        SwipableStackController? controller = widgetData["controller"];
        int? itemCount = widgetData["itemCount"];
        double viewFraction = widgetData["viewFraction"];
        bool allowVerticalSwipe = widgetData["allowVerticalSwipe"] ?? true;
        Map<String, dynamic> detectableSwipeDirections = {
          "directions": ["left", "right", "up", "down"],
          // other properties
        };



        // Curve? cancelAnimationCurve = widgetData["cancelAnimationCurve"];
        // Curve? rewindAnimationCurve = widgetData["rewindAnimationCurve"];
        // SwipeAnchor? swipeAnchor = widgetData["swipeAnchor"];
        // DragStartBehavior dragStartBehavior = widgetData["dragStartBehavior"] ?? DragStartBehavior.start;
        // HitTestBehavior hitTestBehavior = widgetData["hitTestBehavior"] ?? HitTestBehavior.deferToChild;
        // Duration dragStartDuration = widgetData["dragStartDuration"] ?? const Duration(milliseconds: 150);
        // Curve dragStartCurve = widgetData["dragStartCurve"] ?? Curves.easeOut;

        return SwipableStack(

          detectableSwipeDirections: {
            SwipeDirection.down,SwipeDirection.up,SwipeDirection.right,SwipeDirection.left
          },
          controller: controller,
          itemCount: itemCount,
          viewFraction: viewFraction,
          allowVerticalSwipe: allowVerticalSwipe,
          // cancelAnimationCurve: cancelAnimationCurve,
          // rewindAnimationCurve: rewindAnimationCurve,
          // swipeAnchor: swipeAnchor,
          // dragStartBehavior: dragStartBehavior,
          // hitTestBehavior: hitTestBehavior,
          // dragStartDuration: dragStartDuration,
          // dragStartCurve: dragStartCurve,
          horizontalSwipeThreshold: widgetData["horizontalThresold"],
          verticalSwipeThreshold: widgetData["verticalThresold"],
          builder: ( context, properties) {
            return buildWidget(widgetData["builder"], context);
          },
          // onSwipeCompleted: (int index, SwipeDirection direction) {
          //
          // },
          // onWillMoveNext: (int index, SwipeDirection direction) {
          //   return widgetData["onWillMoveNext"]?.call(index, direction) ?? true;
          // },
          // overlayBuilder: (BuildContext context, index) {
          //   return widgetData["overlayBuilder"]?.call(context, index) ?? Container();
          // },
        );



      case "dashLine":
        return CustomDottedLine();

      case "padding":
        return Padding(
          padding: EdgeInsets.only(
              left: widgetData["left"].toDouble() ,
              right:  widgetData["right"].toDouble(),
              top:  widgetData["top"].toDouble(),
              bottom : widgetData["bottom"].toDouble()),
              child: buildWidget(widgetData["child"], context),

        );
      case "sizedBox":
        return SizedBox(
          height: widgetData["height"].toDouble(),
          width: widgetData["width"].toDouble(),
        );

      case "button":
        return CustomButton(
          colorName: Color(int.parse(widgetData["backgroundColor"].substring(1, 7), radix: 16) + 0xFF000000),
          label: widgetData["label"],
          onPressed: (){
            buttonActions(widgetData["tag"], context);
          }, fontWeight: parseFontWeight(widgetData["fontWeight"]),
            textColor:  Color(int.parse(widgetData["textColor"].substring(1, 7), radix: 16) + 0xFF000000),
        );

      case "textField":

        Radius radius = Radius.circular(widgetData["radius"]);



        final String iconStringSuffix = widgetData['suffixIcon'];
        final String iconStringPrefix = widgetData['prefixIcon'];
        final Color color = Color(int.parse(widgetData["prefixColor"].substring(1, 7), radix: 16) + 0xFF000000).withOpacity(0.2);
        final Color color2 = Color(int.parse(widgetData["suffixColor"].substring(1, 7), radix: 16) + 0xFF000000);

        IconData? suffixData;
        IconData? prefixData;

        if (iconStringSuffix.isNotEmpty) {
          suffixData = getIconData(iconStringSuffix);
        }

        if (iconStringPrefix.isNotEmpty) {
          prefixData = getIconData(iconStringPrefix);
        }

        final double size = widgetData['size']?.toDouble() ?? 18.0;

        return CustomTextField(
          keyboardType: parseKeyboardType(widgetData["keyboardType"]),
          textInputAction: parseInputAction(widgetData["textInputAction"]),
          hintText: widgetData["label"],
          controller: TextEditingController(),
          colorName: Color(int.parse(widgetData["colorName"].substring(1, 7), radix: 16) + 0xFF000000)
              .withOpacity(widgetData["fieldOpacity"]),
          obscureText: widgetData["obscureText"],
          radius: radius,
          onChanged: (value){},
          filled: widgetData["filled"],
          // edgeInsets: EdgeInsets.only(
          //     left: widgetData["left"].toDouble(),
          //     right:  widgetData["right"].toDouble(),
          //     top:  widgetData["top"].toDouble(),
          //     bottom : widgetData["bottom"].toDouble()
          //   ),

          suffixIcon: suffixData != null
              ? Icon(
            suffixData,
            color: color2,
            size: size,
          )
              : null,

          prefixIcon: prefixData != null
              ? Icon(
            prefixData,
            color: color,
            size: size,
          )
              : null,

        );






      case "icon":
        final String iconString = widgetData['iconData'];
        final IconData? iconData = getIconData(iconString);

        if (iconData != null) {
          final Color color = Color(int.parse(widgetData['color'].replaceAll("#", "0xFF")));
          final double size = widgetData['size']?.toDouble() ?? 24.0;

          return GestureDetector(
            onTap: (){
              buttonActions(widgetData["tag"], context);
            },
            child: Icon(
              iconData,
              color: color,
              size: size,
            ),
          );
        } else {
          return Container(); // Return a placeholder widget or handle unsupported icons
        }

      case "iconButton":
        return IconButton(
            onPressed: (){
              var tags = widgetData["tag"];
              buttonActions(tags, context);
            },
            icon: buildWidget(widgetData["child"], context),
        );

      case "textButton":
        return TextButton(
          onPressed: (){
            buttonActions(widgetData["tag"], context);
          },
          child: buildWidget(widgetData["child"], context),
        );

      case "lottie":
        return Lottie.asset(widgetData["lottieUrl"]);



      case "checkbox":
        return CustomCheckbox(
          isChecked: false,
          checkColor: Colors.blue,
          activeColor: Color(0xffFFFFFF),
          inactiveColor: Color(0xffF3F4F6),
          size: 24.0,
          label: widgetData["label"],
          onChanged: (value){
            print("Checkbox state: $value");
          },
        );

      case "appBar":
        return AppBar(
          flexibleSpace:  buildWidget(widgetData["flexibleSpace"], context),
          elevation: widgetData["elevation"].toDouble() ,
          backgroundColor: Color(int.parse(widgetData["backgroundColor"].substring(1, 7), radix: 16) + 0xFF000000),
          automaticallyImplyLeading: false,
          //actions: buildChildren(widgetData["actions"], context),
        );

      case "pageView":
        return CustomPageView(
          children: buildChildren(widgetData["children"], context),
          controller: _pageController,
          color: Color(
              int.parse(widgetData["activeColor"].substring(1, 7), radix: 16) + 0xFF000000),
        );

        case "pageViewBuilder":
        return CustomPageViewBuilder(
          itemCount: widgetData["itemCount"],
          scrollDirection: widgetData["scrollDirection"] == "horizontal"
              ? Axis.horizontal
              : Axis.vertical,
            children:  buildChildren(widgetData["children"], context),
            controller: _pageController,
            color: Color(int.parse(widgetData["activeColor"].substring(1, 7), radix: 16) + 0xFF000000),

        );


      case "carousel_slider":
        return CarouselSlider(
          options: CarouselOptions(
             // height: widgetData["options"]["height"],
            //  width: widgetData["options"]["width"],
           // aspectRatio: widgetData["options"]["aspectRatio"],
            aspectRatio: 1.0,
            viewportFraction: widgetData["options"]["viewportFraction"],
            initialPage: widgetData["options"]["initialPage"],
            enableInfiniteScroll: widgetData["options"]["enableInfiniteScroll"],
            reverse: widgetData["options"]["reverse"],
            autoPlay: widgetData["options"]["autoPlay"],
            autoPlayInterval: Duration(milliseconds: widgetData["options"]["autoPlayInterval"]),
            autoPlayAnimationDuration: Duration(milliseconds: widgetData["options"]["autoPlayAnimationDuration"]),
            autoPlayCurve: parseAutoPlayCurve(widgetData["options"]["autoPlayCurve"]),
            enlargeCenterPage: widgetData["options"]["enlargeCenterPage"],
            scrollDirection: widgetData["options"]["scrollDirection"] == "horizontal"
                ? Axis.horizontal
                : Axis.vertical,
          ),
          items: List.generate(
            widgetData["items"].length,
                (index) => buildWidget(widgetData["items"][index], context),
          ),
        );

      case "clipReact":
        return ClipRRect(
          borderRadius: BorderRadius.circular(widgetData["borderRadius"] ?? 0.0),
          child:  buildWidget(widgetData["child"], context),
        );

      case "staggeredGrid":
        return  StaggeredGridView.countBuilder(
          crossAxisCount: widgetData["crossAxisCount"],
          itemCount: widgetData["itemCount"],
          itemBuilder: (context,index) {
            return buildWidget(widgetData["stagItemBuilder"], context);
          },
          staggeredTileBuilder: (int index) {
            return StaggeredTile.count(1, index.isEven ? 1.5 : 1); // Item height varies
          },
          mainAxisSpacing:  widgetData["mainAxisSpacing"],
          crossAxisSpacing: widgetData["crossAxisSpacing"],
        );




// ...

        // Declare a variable to hold the selected value



      case "dropDown":
        return DropdownButton2<String>(
          value: selectedValue, // Set the selected value
          items: (widgetData['items'] as List<dynamic>).map<DropdownMenuItem<String>>((item) {
            return DropdownMenuItem<String>(
              value: item['value'],
              child: buildWidget(item["child"], context), // Corrected child property
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              selectedValue = newValue; // Update the selected value
              // Access and use the details of the selected item from the JSON items
              Map<String, dynamic>? selectedDetails = (widgetData['items'] as List<dynamic>)
                  .firstWhere((item) => item['value'] == newValue, orElse: () => null);
              print("Selected details from JSON items: $selectedDetails");
            });
          },
        );


      case "sliverSnap":
        return Container(
          height: MediaQuery.of(context).size.height,
          child: SliverSnap(
            onCollapseStateChanged: (isCollapsed, scrollingOffset, maxExtent) {},
            collapsedBackgroundColor: Color(int.parse(widgetData["collapsedBackgroundColor"].substring(1, 7), radix: 16) + 0xFF000000),
            expandedBackgroundColor: Colors.transparent,
            backdropWidget: buildWidget(widgetData["childImage"], context),
            bottom:  PreferredSize(
              preferredSize: Size.fromHeight(40),
               child: Icon(Icons.arrow_back, color: Colors.white, size: 30)
            ),
            expandedContentHeight: widgetData["expandedContentHeight"],
            expandedContent:  buildWidget(widgetData["expandedContent"], context),
            collapsedContent:buildWidget(widgetData["collapsedContent"], context),
            body:  Material(
              elevation: 7,
              child: buildWidget(widgetData["bodyContent"], context)
            ),
          ),
        );


      case "badge":
        return badges.Badge(
          child: buildWidget(widgetData["child"], context),
          badgeAnimation: parseBadgeAnimation(widgetData["badgeAnimation"]),
          badgeContent: buildWidget(widgetData["badgeContent"], context),
          showBadge: widgetData["showBadge"],
          position: parseBadgePosition(
            widgetData["badgePosition"],
            widgetData["top"] ?? 0.0,
            widgetData["end"] ?? 0.0,
            widgetData["bottom"] ?? 0.0,
            widgetData["start"] ?? 0.0,
          ),
          badgeStyle: badges.BadgeStyle(),
        );

      case "increment":
        String tag = widgetData["tag"]; // Assuming "tag" is nested within "child"
        return GestureDetector(
          onTap: () {
            buttonActions(tag, context); // Assuming buttonActions is accessible here
            setState(() {
              badgeValue = int.parse(widgetData["badgeContent"]["label"]) + 1;
            });
          },
        );


      case "incrementText":
        return Text(
          widgetData["incrementLabel"]
        );

      case "material":
        return Material(
          child: buildWidget(widgetData["child"], context),
          elevation: widgetData["elevation"],
          color: Color(int.parse(widgetData["materialColor"].substring(1, 7), radix: 16) + 0xFF000000),
        );

      case "avatar":
        return CircleAvatar(
          backgroundColor: Color(int.parse(widgetData["backgroundColor"].substring(1, 7), radix: 16) + 0xFF000000),
          radius: widgetData["radius"],
         // child: buildWidget(widgetData["child"], context),
         // backgroundImage: widgetData["backgroundImage"],
        );

      case "testGrid":
        List<List<Product>> productLists = [
          // Define product lists for each category
          [Product("Product 1", "Description 1"), Product("Product 2", "Description 2")],
          [Product("Favorite Product 1", "Description 1"), Product("Favorite Product 2", "Description 2")],
          [Product("Favorite Product 3", "Description 1"), Product("Favorite Product 2", "Description 2")],
          // Add more lists for other categories
        ];
        List<Product> productList = selectedIndex < productLists.length ? productLists[selectedIndex] : [];
        Widget buildProductItem(Product product) {
          return Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(product.name),
                Text(product.description),
              ],
            ),
          );
        }
        return  GridView.builder(
          physics: ClampingScrollPhysics(),
          itemCount: productList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return buildProductItem(productList[index]);
          },
        );

      case "imageIcon":
        return GestureDetector(
          onTap: (){
            buttonActions(widgetData["tag"], context);
          },
          child: ImageIcon(
            AssetImage(widgetData["image"]),
            size: widgetData["size"],
          //  color: Color(int.parse(widgetData["color"].substring(1, 7), radix: 16) + 0xFF000000),
          ),
        );

      // case "transform":
      //   return Transform.translate(
      //       offset: Offset(widgetData["dy"],widgetData["dx"]),
      //     child:  buildWidget(widgetData["child"], context),
      //   );
      //
      // case "transformScale" :
      //   return Transform.scale(
      //     scale: widgetData["scale"],
      //     child:  buildWidget(widgetData["child"], context),
      //   );


      case "transform":
        return Transform.translate(
          offset: Offset(-10, 10), // Adjust this value based on your needs
          child: Transform.scale(
            scale: 1.2,
            child: ClipRRect(
              child: Image.asset(
                scale: 1,
                height: 150,
                'assets/nike1.png', // Replace with your image URL
                 fit: BoxFit.contain,
                // Image width
                //height: 200, // Image height
              ),
            ),
          ),
        );

      case "divider":
        return Divider(
          thickness: widgetData["thickness"],
          height: widgetData["height"],
          endIndent: widgetData["endIndent"],
          indent: widgetData["indent"],
          color:  Color(int.parse(widgetData["color"].substring(1, 7), radix: 16) + 0xFF000000),
        );


      case "backDrop":
        return BackdropFilter(
          child: buildWidget(widgetData["child"], context),
            filter: ImageFilter.blur(
              tileMode: TileMode.mirror,
            )
        );

      case "imageBlur":
        return ImageFilter.blur(
          sigmaY: 10,sigmaX: 10
        );

        
      case "card":
        return GestureDetector(
          onTap: (){
            buttonActions(widgetData["tag"], context);
          },
          child: Card(
           child:  buildWidget(widgetData["child"], context),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
            elevation: widgetData["elevation"],
            color: getColorss(widgetData["color"]),


    ),
        );
        
      case "clipReact":
        return ClipRRect(
          child: buildWidget(widgetData["child"], context),
          borderRadius: BorderRadius.circular(15),
        );


      case "stickyHeader":
        return StickyHeader(
            header: buildWidget(widgetData["header"], context),
            content: buildWidget(widgetData["content"], context),
        );


      case "nestedScroll":
        return NestedScrollView(
           body: buildWidget(widgetData["nestedBody"], context),
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
             return buildChildren(widgetData["children"], context);
          },
        );

      case "sliverAppBar":
        return SliverAppBar(
          pinned: true,
          expandedHeight: 100.0,
          flexibleSpace: FlexibleSpaceBar(

            title: Text('Sticky ListView'),
            background: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.ac_unit),
                    Icon(Icons.ac_unit),
                    Icon(Icons.ac_unit),
                  ],
                ),

              ],
            )
          ),
        );

      case "richText":
        return RichText(
            text: TextSpan(
              children: widgetData["children"]
            ),
        );

      case "bottomSheet":
        return Scaffold(
          bottomSheet: BottomSheet(
              onClosing: (){},
              builder: (BuildContext contex){
               return  buildWidget(widgetData["child"], context);
             }
          ),
        );

      case "stickyContainer":
        return StickyContainer(
            child: buildWidget(widgetData["child"], context),
          stickyChildren: []
        );

      case "color":
        return Color(int.parse(widgetData["color"].substring(1, 7), radix: 16) + 0xFF000000);





      default:
        return Container(); // Return an empty widget for unsupported types
    }
  }



  // static Widget buildSwipableStack(Map<String, dynamic> json) {
  List<Widget> buildChildren(List<dynamic> childrenData, BuildContext context) {
    final List<Widget> children = [];
    for (var childData in childrenData) {
      children.add(buildWidget(childData, context));
    }
    return children;
  }

  List<Widget> buildAppBarActions(Map<String, dynamic> data, BuildContext context) {
    final List<dynamic> actionsData = data['actions'];
    List<Widget> appBarActions = [];

    for (var actionData in actionsData) {
      final String type = actionData['type'];
      switch (type) {
        case "icon":
          final IconData iconData = IconData(
            actionData['iconData'],
            fontFamily: actionData['fontFamily'],
            fontPackage: actionData['fontPackage'],
          );
          appBarActions.add(
            IconButton(
              icon: Icon(iconData),
              onPressed: () {
                // Handle the icon action's onPressed event
              },
            ),
          );
          break;

        case "text":
          appBarActions.add(Text(""));

        case "button":
          appBarActions.add(
            TextButton(
              onPressed: () {},
                // Handle the button action's onPressed event
              child: Text(actionData['text']),
            ),
          );
          break;
          // Add more cases for other action types as needed
        default:
          break;
      }
    }
    return appBarActions;
  }
}

class Product {
  final String name;
  final String description;

  Product(this.name, this.description);
}

  MainAxisAlignment mainAxisAlignment(String alignment) {
    switch (alignment) {
      case "center":
        return MainAxisAlignment.center;
      case "start":
        return MainAxisAlignment.start;
      case "end":
        return MainAxisAlignment.start;
      case "spaceEvenly":
        return MainAxisAlignment.spaceEvenly;
      case "spaceBetween":
        return MainAxisAlignment.spaceBetween;
      case "spaceAround":
        return MainAxisAlignment.spaceAround;


      default:
        return MainAxisAlignment.start;
    }
  }

  CrossAxisAlignment crossAxisAlignment(String alignment) {
    switch (alignment) {
      case "center":
        return CrossAxisAlignment.center;
      case "start":
        return CrossAxisAlignment.start;
      case "end":
        return CrossAxisAlignment.end;
      case "baseline":
        return CrossAxisAlignment.baseline;


      default:
        return CrossAxisAlignment.start;
    }
  }

  // button Actions
  buttonActions(String tags, BuildContext context) async {
  int badgeValue = 3;
  var json1 ;

  void updateBadgeValueInJson(Map<String, dynamic>? yourJson, int newBadgeValue) {
    if (yourJson != null) {
      yourJson["body"]["child"]["children"][0]["badgeContent"]["label"] = newBadgeValue.toString();
    }
  }

  switch (tags) {
      case "goToHome":
       return Get.to(()=> HomeScreen());

      case "back":
        return Navigator.of(context).pop();

      case "signUp":
        return Get.to(()=> SignUpScreen());

      case "goToHomeFromSignUp":
        return Get.to(()=> HomeScreen());

      case "signIn":
        return Get.to(()=> SignInScreen());

      case "goToDetailsScreen":
        //apiCall(tags);
        return Get.to(()=> DetailsScreen());

    case "goToDetails2Screen":
    //apiCall(tags);
      return Get.to(()=> Details2Screen());

      case "goToViewMore":
        
        //apiCall(tags);
        return Get.to(() => ViewMoreScreen(itemId: 55,));

    case "goToCartScreen":
      return Get.to(()=> CartScreen());

    case "goToHome2":
      return Get.to(()=> HomeScreen2());

    case "signUp2":
      return Get.to(()=> SignUp2Screen());

    case "signIn2":
      return Get.to(()=> SignInn2Screen());

    case "goToCart2":
      return Get.to(()=> Cart2Screen());

    case "goTosignUp3":
      return Get.to(()=> SignUp3Screen());

    case "goToSignIn":
      return Get.to(()=> SignIn3Screen());

    case "goToHome3":
      return Get.to(()=> NavBarClass());

    case "goToDetails3":
      return Get.to(()=> Details3Screen());

    case "goToCart3":
      return Get.to(()=> Cart3Screen());

    case "goToNavigationScreen":
      return Get.to(()=> NavigationScreen());





    case "increment":
      badgeValue++;
      updateBadgeValueInJson(json1 as Map<String, dynamic>?, badgeValue);
      print(badgeValue);
      return;


      case "drawer":
        return  Scaffold.of(context).openDrawer();


    }
  }





//api actions
  // apiCall(var tag) async {
  //   switch (tag) {
  //     case "getStarted":
  //      // await PhoneData();
  //      // var uiConfig = await jsonController.loadSplashScreenUI();
  //       return Get.to(() => OnBoardingScreen());
  //
  //     case "goToSignUpScreen":
  //       return  Get.to(() => SignInScreen());
  //
  //     case "goToPasswordScreen":
  //     //  await PasswordData();
  //      // var uiConfig = await jsonController.loadPasswordScreenUI();
  //       return  Get.to(() => PasswordScreen());
  //
  //     case "goToHomeScreen":
  //       return  Get.to(() => HomeScreen());
  //
  //     case "goToNxtPage":
  //       return  Get.to(() => DetailsScreen());
  //
  //     case "delete":
  //       return ;// Get.to(() => DetailsScreen());
  //
  //     case "add":
  //       return ;
  //
  //     case "remove":
  //       return ;
  //
  //     case "applyCoupon":
  //       return ;
  //
  //     case "test2":
  //       return  Get.to(() => Test2Ui());
  //
  //     case "test3":
  //       return  Get.to(() => Test3Ui());
  //
  //     case "test4":
  //       return  Get.to(() => Test4Ui());
  //
  //     case "test5":
  //       return  Get.to(() => Test5Ui());
  //
  //     case "test6":
  //       return  Get.to(() => Test6Ui());
  //
  //
  //   }
  // }


//Carosal
Curve parseAutoPlayCurve(String curveName) {
  switch (curveName) {
    case "linear":
      return Curves.linear;
    case "decelerate":
      return Curves.decelerate;
    case "ease":
      return Curves.ease;
    case "easeIn":
      return Curves.easeIn;
    case "easeOut":
      return Curves.easeOut;
    case "easeInOut":
      return Curves.easeInOut;

    case "bounceIn":
      return Curves.bounceIn;

    case "bounceInOut":
      return Curves.bounceInOut;

    case "easeInBack":
      return Curves.easeInBack;

    case "easeInCirc":
      return Curves.easeInCirc;

    case "easeInCubic":
      return Curves.easeInCubic;

    case "easeInExpo":
      return Curves.easeInExpo;

    case "easeInOutCubicEmphasized":
      return Curves.easeInOutCubicEmphasized;

    case "elasticIn":
      return Curves.elasticIn;
  // Add more cases for other curves as needed
    default:
      return Curves.linear;
  }
}




  AlignmentGeometry parseAlignment(String alignment) {
    switch (alignment) {
      case "center":
        return Alignment.center;
      case "topLeft":
        return Alignment.topLeft;
    // Add more cases for other alignments as needed
      default:
        return Alignment.center;
    }
  }

  badges.BadgeAnimation parseBadgeAnimation(String badgeAnimation) {
    switch (badgeAnimation) {
      case "slide":
        return badges.BadgeAnimation.slide();
      case "fade":
        return badges.BadgeAnimation.fade();
      case "rotation":
        return badges.BadgeAnimation.rotation();
      case "size":
        return badges.BadgeAnimation.size();
      case "scale":
        return badges.BadgeAnimation.scale();

      default:
        return badges.BadgeAnimation.slide();
    }
  }


badges.BadgePosition parseBadgePosition(String badgePosition, double top, double end, double bottom, double start) {
  switch (badgePosition) {
    case "topStart":
      return badges.BadgePosition.topStart(top: top, start: start);
    case "topEnd":
      return badges.BadgePosition.topEnd(top: top, end: end);
    case "bottomStart":
      return badges.BadgePosition.bottomStart(bottom: bottom, start: start);
    case "bottomEnd":
      return badges.BadgePosition.bottomEnd(bottom: bottom, end: end);
  // Add more cases for other positions as needed
    default:
      return badges.BadgePosition.topEnd(top: top, end: end);
  }
}







BoxDecoration _buildDecorationFromJson(Map<String, dynamic> json) {

  ConfigController configController = Get.put(ConfigController());

    final Map<String, dynamic>? gradientJson = json['gradient'];
    if (gradientJson != null) {
      final Alignment begin = _parseAlignment(gradientJson['begin']);
      final Alignment end = _parseAlignment(gradientJson['end']);
      final List<Color> colors = (gradientJson['colors'] as List<dynamic>).map((colorDynamic) {
        if (colorDynamic is String) {
          var col =  HexColor(AppColors.backgroundColor);
         // var col = Color(int.parse(colorDynamic.replaceAll("#", "0xFF")));
          return col;
        } else {
          return Colors.transparent; // Example of a default color.
        }
      }).toList();

      String? borderColorValue = json['borderColor'];
      Color? borderColorView;

      final Map<String, dynamic>? borderRadiusJson = json['borderRadius'];
      BorderRadius? borderRadius;


      if(borderColorValue != null) {
        final String? colorValue = json['color'];
        final Color? colorView = colorValue != null
            ? Color(int.parse(colorValue.replaceAll("#", "0xFF")))
            : Colors.white;

        borderColorView = borderColorValue != null
            ? Color(int.parse(borderColorValue.replaceAll("#", "0xFF")))
            : Colors.white;


        if (borderRadiusJson != null) {
          final double topRight = borderRadiusJson['topRight'] != null
              ? borderRadiusJson['topRight'].toDouble()
              : 0.0;
          final double bottomRight = borderRadiusJson['bottomRight'] != null
              ? borderRadiusJson['bottomRight'].toDouble()
              : 0.0;
          final double topLeft = borderRadiusJson['topLeft'] != null
              ? borderRadiusJson['topLeft'].toDouble()
              : 0.0;
          final double bottomLeft = borderRadiusJson['bottomLeft'] != null
              ? borderRadiusJson['bottomLeft'].toDouble()
              : 0.0;

          final double shadowSpreadRadius = json['shadowSpreadRadius'] != null
              ? json['shadowSpreadRadius'].toDouble()
              : 0.0;
          final double shadowBlurRadius = json['shadowBlurRadius'] != null
              ? json['shadowBlurRadius'].toDouble()
              : 0.0;
          final Offset shadowOffset = _parseOffset(json['shadowOffset']);

          borderRadius = BorderRadius.only(
            topRight: Radius.circular(topRight),
            bottomRight: Radius.circular(bottomRight),
            topLeft: Radius.circular(topLeft),
            bottomLeft: Radius.circular(bottomLeft),
          );
          print("");
        }
      }
      var shadowSpreadRadius;
      var shadowBlurRadius;
      var shadowOffset;
      return  (borderColorValue == null) ? BoxDecoration(
        gradient: LinearGradient(
          begin: begin,
          end: end,
          colors: colors,
        ),
      ) : BoxDecoration(
        gradient: LinearGradient(
          begin: begin,
          end: end,
          colors: colors,
        ),
        borderRadius: borderRadius!,
        border: Border.all(
          color: borderColorView ?? Colors.grey,
        ),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.black.withOpacity(0.5), // Shadow color
        //     spreadRadius: shadowSpreadRadius,
        //     blurRadius: shadowBlurRadius,
        //     offset: shadowOffset,
        //   ),
        // ],
      );
    } else {
      return borderRadiusView(json);
    }
  }
Offset _parseOffset(dynamic offsetJson) {
  if (offsetJson is Map<String, dynamic>) {
    final double dx = offsetJson['dx'] != null ? offsetJson['dx'].toDouble() : 0.0;
    final double dy = offsetJson['dy'] != null ? offsetJson['dy'].toDouble() : 0.0;
    return Offset(dx, dy);
  }
  return Offset.zero;
}


BoxDecoration borderRadiusView(Map<String, dynamic> json) {

  ConfigController configController = Get.put(ConfigController());
   //String? colorValue = json['color'];
   String? colorValue1 = json['color'];

 String? colorValue =  getColors(colorValue1 ?? "primaryColor") ;
  final double opacityValue = json['opacity'] != null ? json['opacity'].toDouble() : 0.1;


  Color? colorView;
  if (colorValue != null) {
    // Validate the format of the hex color value
    final validHexColor = RegExp(r'^#([0-9a-fA-F]{6})$').hasMatch(colorValue);

    // Convert the hex color value to a Color object if it's valid
    colorView = validHexColor
        ? Color(int.parse(colorValue.replaceAll("#", "0xFF"))).withOpacity(opacityValue)
        : Colors.white;
  } else {
    colorView = Colors.white;
  }

  final String? imageUrl = json['imageUrl'];
  final Image? imageView = imageUrl != null ? Image.asset(imageUrl) : null;

  final String? borderColorValue = json['borderColor'];
  final Color? borderColorView = borderColorValue != null
      ? Color(int.parse(borderColorValue.replaceAll("#", "0xFF")))
      : Colors.white;

  final Map<String, dynamic>? borderRadiusJson = json['borderRadius'];
  BorderRadius borderRadius;

  if (borderRadiusJson != null) {
    final double topRight = borderRadiusJson['topRight'] != null ? borderRadiusJson['topRight'].toDouble() : 0.0;
    final double bottomRight = borderRadiusJson['bottomRight'] != null ? borderRadiusJson['bottomRight'].toDouble() : 0.0;
    final double topLeft = borderRadiusJson['topLeft'] != null ? borderRadiusJson['topLeft'].toDouble() : 0.0;
    final double bottomLeft = borderRadiusJson['bottomLeft'] != null ? borderRadiusJson['bottomLeft'].toDouble() : 0.0;

    borderRadius = BorderRadius.only(
      topRight: Radius.circular(topRight),
      bottomRight: Radius.circular(bottomRight),
      topLeft: Radius.circular(topLeft),
      bottomLeft: Radius.circular(bottomLeft),
    );

    return BoxDecoration(
      image: imageView != null
          ? DecorationImage(
        image: AssetImage(imageUrl!), // Assuming imageUrl is not null here
        fit: BoxFit.cover,
      )
          : null,
      color: colorView,
      borderRadius: borderRadius,
      border: Border.all(
        color: borderColorView ?? Colors.grey,
      ),
    );
  } else {
    borderRadius = BorderRadius.zero;
    return BoxDecoration(
      color: colorView,
      borderRadius: borderRadius,
      border: Border.all(
        color: borderColorView ?? Colors.grey,
      ),
    );
  }
}




getColors(String colorName) {
  ConfigController configController = Get.put(ConfigController());

  switch (colorName) {
    case "primaryColor":
      return configController.primaryColor ;

    case "secondaryColor":
      return configController.secondaryColor;

    case "buttonColor":
      return  configController.buttonColor;


    case "tertiaryColor":
      return  configController.tertiaryColor;

    case "textColor":
      return  configController.textColor;

    case "cardColor":
      return  configController.cardColor;


    default:
    // Add a default return value or handle the case accordingly
      return "#FFFFFF";
  }
}


Color? getColorss(String colorName) {
  ConfigController configController = Get.put(ConfigController());

  switch (colorName) {
    case "primaryColor":
      return Color(int.parse(configController.primaryColor.substring(1, 7), radix: 16) + 0xFF000000);

    case "secondaryColor":
      return Color(int.parse(configController.secondaryColor.substring(1, 7), radix: 16) + 0xFF000000);

    case "buttonColor":
      return Color(int.parse(configController.buttonColor.substring(1, 7), radix: 16) + 0xFF000000);

    case "tertiaryColor":
      return Color(int.parse(configController.tertiaryColor.substring(1, 7), radix: 16) + 0xFF000000);

    case "textColor":
      return Color(int.parse(configController.textColor.substring(1, 7), radix: 16) + 0xFF000000);

    case "cardColor":
      return Color(int.parse(configController.cardColor.substring(1, 7), radix: 16) + 0xFF000000);

    default:
    // Handle the default case by returning null or a default color
      return null;
  }
}

Color hexToColor(String hexColor) {
  // Ensure that the hexColor is in the format "0xFFAA7EEF"
  hexColor = hexColor.replaceAll("#", "0xFF");

  try {
    return Color(int.parse(hexColor));
  } catch (e) {
    // Handle the exception (e.g., log an error, provide a default color)
    print("Error parsing hexadecimal color: $hexColor");
    throw FormatException("Invalid hex color: $hexColor");
  }
}



// Rest of your code remains unchanged





Alignment _parseAlignment(String alignmentStr) {
    switch (alignmentStr) {
      case 'Alignment.topLeft':
        return Alignment.topLeft;
      case 'Alignment.topCenter':
        return Alignment.topCenter;
      case 'Alignment.topRight':
        return Alignment.topRight;
      case 'Alignment.centerLeft':
        return Alignment.centerLeft;
      case 'Alignment.center':
        return Alignment.center;
      case 'Alignment.centerRight':
        return Alignment.centerRight;
      case 'Alignment.bottomLeft':
        return Alignment.bottomLeft;
      case 'Alignment.bottomCenter':
        return Alignment.bottomCenter;
      case 'Alignment.bottomRight':
        return Alignment.bottomRight;
      default:
        return Alignment.center; // Default to center if not recognized
    }
  }








  BoxFit parseBoxFit(String boxFit) {
    switch (boxFit) {
      case "fill":
        return BoxFit.fill;
      case "contain":
        return BoxFit.contain;
      case "cover":
        return BoxFit.cover;
      case "fitWidth":
        return BoxFit.fitWidth;
      case "fitHeight":
        return BoxFit.fitHeight;
      case "none":
        return BoxFit.none;
      case "scaleDown":
        return BoxFit.scaleDown;
    // Add more cases for other BoxFit values as needed
      default:
        return BoxFit.fill; // Default to BoxFit.fill if the input is not recognized
    }
  }

  FlipDirection parseFlipDirection(String flipDirection){

  switch(flipDirection) {
    case "horizontal":
      return  FlipDirection.HORIZONTAL;

    case "vertical":
      return FlipDirection.VERTICAL;

    default:
      return FlipDirection.HORIZONTAL;
   }
  }

  CardSide parseCardSide(String cardSide) {
  switch(cardSide) {
    case "front":
      return CardSide.FRONT;

    case "back":
      return CardSide.BACK;

    default:
      return CardSide.FRONT;
   }
  }


  SwipeDirection parseSwipeDirection(String detectableSwipeDirections){
  switch(detectableSwipeDirections){
    case "left":
      return SwipeDirection.left;

    case "right":
      return SwipeDirection.right;

    case "up":
      return SwipeDirection.up;

    case "down":
      return SwipeDirection.down;

    default :
      return SwipeDirection.left;
   }
  }




  FontWeight parseFontWeight(String fontWeight) {
    switch (fontWeight) {
      case "bold":
        return FontWeight.bold;
      case "normal":
        return FontWeight.normal;

    // Add more cases for other font weights as needed
      default:
        return FontWeight.normal;
    }
  }

TextOverflow parseTextOverflow(String overflow) {
  switch (overflow) {
    case "ellipsis":
      return TextOverflow.ellipsis;
    case "clip":
      return TextOverflow.clip;
    case "fade":
      return TextOverflow.fade;
  // Add more cases for other overflow values as needed
    default:
      return TextOverflow.ellipsis;
  }
}




TextInputType parseKeyboardType(String keyboardType) {
  switch (keyboardType) {
    case "text":
      return TextInputType.text;

    case "number":
      return TextInputType.number;

    case "phone":
      return TextInputType.phone;

    case "email":
      return TextInputType.emailAddress;

    case "visiblePassword":
      return TextInputType.visiblePassword;

  // Add more cases as needed

    default:
      return TextInputType.text;
  }
}

TextInputAction parseInputAction(String inputAction) {
  switch (inputAction) {
    case "done":
      return TextInputAction.done;

    case "send":
      return TextInputAction.send;

    case "go":
      return TextInputAction.go;

    case "search":
      return TextInputAction.search;



    case "next":
      return TextInputAction.next;




  // Add more cases as needed

    default:
      return TextInputAction.done;
  }
}





  IconData? getIconData(String iconString) {
    switch (iconString) {
      case 'arrow_forward':
        return Icons.arrow_forward;

        case 'arrow_back':
        return Icons.arrow_back;

      case 'search':
        return Icons.search;

      case 'favorite_border':
        return Icons.favorite_border;

      case 'star_border':
        return Icons.star_border;

      case 'delete_outlined':
        return Icons.delete_outlined;

      case 'add':
        return Icons.add;

      case 'remove':
        return Icons.remove;

      case 'arrow_forward_ios':
        return Icons.arrow_forward_ios;

      case 'settings':
        return Icons.settings;

      case 'drawer':
        return Icons.grid_view;

      case "cart":
        return Icons.shopping_cart;

      case "noti":
        return Icons.notifications;

      case "adjust":
        return Icons.settings;

      case "bookmark":
        return Icons.bookmark_outline;

      case "comment":
        return Icons.chat_outlined;

      case "bag":
        return Icons.shopping_bag_outlined;

      case "delete":
        return Icons.delete_outlined;

      case "home":
        return Icons.home_outlined;

      case "profile":
        return Icons.person;

      case "back":
        return Icons.arrow_back_ios;

      case "arrowForword":
        return Icons.arrow_forward_ios;

      case "settings":
        return Icons.settings;

      case "heart":
        return MyFlutterApp.heart;

      case "setting2":
        return MyFlutterApp.settings;


      case "delete1":
        return MyFlutterApp.delete;

      case "profile1":
        return MyFlutterApp.profile;

      case "cart1":
        return MyFlutterApp.cart1;

      case "cart2":
        return MyFlutterApp.cart2;












    // Add more cases for other icons as needed
      default:
        return null; // Return null for unsupported icons
    }
  }


