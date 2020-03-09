import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Instagram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          "assets/images/insta_logo.png",
          height: 40,
        ),
        leading: Icon(Icons.camera_alt),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 16, right: 16),
              child: Row(
                children: <Widget>[
                  Text("Stories",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  Spacer(),
                  Icon(
                    Icons.arrow_right,
                    size: 40,
                  ),
                  Text("Watch All",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16))
                ],
              ),
            ),
            SizedBox(
              width: screenWidth,
              height: 80,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 9,
                  itemBuilder: (context, index) {
                    return () {
                      if (index == 0) {
                        return Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: <Widget>[
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(200),
                                  child: Image.network(
                                    "https://randomuser.me/api/portraits/men/9.jpg",
                                    width: 70,
                                  )),
                              Container(
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(200),
                                    color: Colors.blue),
                              ),
                            ],
                          ),
                        );
                      } else {
                        return Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(200),
                              child: Image.network(
                                "https://randomuser.me/api/portraits/women/17.jpg",
                                width: 70,
                              )),
                        );
                      }
                    }();
                  }),
            ),
            ListView.builder(
                physics: PageScrollPhysics(),
                padding: EdgeInsets.only(top: 18),
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Row(
                          children: <Widget>[
                            ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.network(
                                  "https://randomuser.me/api/portraits/men/81.jpg",
                                  width: 50,
                                )),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text(
                                " Mehrdad",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: Icon(
                                Icons.more_vert,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16, bottom: 8),
                        child: Image.network(
                            "http://hamyardeveloper.ir/wp-content/uploads/2019/10/%D8%A2%D9%85%D9%88%D8%B2%D8%B4-%D9%81%D9%84%D8%A7%D8%AA%D8%B1-740x414.gif"),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8, right: 8, bottom: 8),
                        child: Row(
                          children: <Widget>[
                            IconButton(
                              icon: FaIcon(
                                FontAwesomeIcons.heart,
                                size: 25,
                              ),
                              onPressed: () {},
                            ),
                            IconButton(
                                icon: FaIcon(
                                  FontAwesomeIcons.comment,
                                  size: 25,
                                ),
                                onPressed: () {}),
                            IconButton(
                                icon: FaIcon(
                                  FontAwesomeIcons.paperPlane,
                                  size: 25,
                                ),
                                onPressed: () {}),
                            Spacer(),
                            IconButton(
                                icon: FaIcon(
                                  FontAwesomeIcons.bookmark,
                                  size: 25,
                                ),
                                onPressed: () {})
                          ],
                        ),
                      ),
                      Text("      Liked by Mahyar,Ali and 353,658 others",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15)),
                      Padding(
                        padding: const EdgeInsets.only(left: 16, top: 10),
                        child: Row(
                          children: <Widget>[
                            ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.network(
                                  "https://randomuser.me/api/portraits/men/81.jpg",
                                  width: 40,
                                )),
                            Text("   Add a Comment ...",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.grey)),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 16, top: 8, bottom: 18),
                        child: Text("1 Day Ago",
                            style: TextStyle(fontSize: 15, color: Colors.grey)),
                      ),
                    ],
                  );
                })
          ],
        ),
      ),
    );
  }
}
