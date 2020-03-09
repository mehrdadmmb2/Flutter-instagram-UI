import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeState();
  }
  
}

class HomeState extends State<Home2>{

 String title="State training";

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: InkWell(
          child: Text(title),
          onTap: () {
            setState(() {
              title="Title changed";
            });
          },
        ),
      ),
      body: Container(
       
      ),
    );
  }
  
}