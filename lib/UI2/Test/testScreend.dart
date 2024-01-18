import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:sticky_headers/sticky_headers.dart';

class MyStick extends StatefulWidget {
  const MyStick({super.key});

  @override
  State<MyStick> createState() => _MyStickState();
}

class _MyStickState extends State<MyStick> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 800,
        width: 400,
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
          //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.confirmation_num_sharp),
                  Icon(Icons.confirmation_num_sharp),
                  Icon(Icons.confirmation_num_sharp),
                ],
              ),
              Text("NewCollections"),
              Text("NewCollections"),
              Container(
                height: 200,width: 400,
                color: Colors.red,
              ),
              StickyHeader(
                  header:  Container(
                    color: Colors.black,
                    height: 50,
                  ),
                  content: Container(
                    height: 600,
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            mainAxisExtent: 200.0
                        ),
                        itemBuilder: (context,index){
                          return Container(
                            height: 200,
                            color: Colors.red,
                          );
                        }
                    ),
                  )
              ),
              Container(
                height: 200,width: 400,
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
