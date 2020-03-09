import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: InkWell(
          child: Text("State training"),
          onTap: () {},
        ),
        leading: Icon(Icons.menu),
        actions: <Widget>[
          Icon(Icons.search),
          Padding(
              padding: EdgeInsets.only(right: 16, left: 16),
              child: IconButton(
                  icon: Icon(Icons.inbox),
                  onPressed: () {
                    print("Clicked on Inbox!!!!");
                  }))
        ],
      ),
      body: Container(
        color: Colors.grey,
      ),
    );
  }
}
