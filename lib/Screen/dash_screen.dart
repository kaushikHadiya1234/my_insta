import 'package:flutter/material.dart';

class DashScreen extends StatefulWidget {
  const DashScreen({Key? key}) : super(key: key);

  @override
  State<DashScreen> createState() => _DashScreenState();
}

class _DashScreenState extends State<DashScreen> {
  List reelimage = [
    "Assets/Home_Screen/Reel_image/r1.jpeg",
    "Assets/Home_Screen/Reel_image/r2.jpeg",
    "Assets/Home_Screen/Reel_image/r3.jpeg",
    "Assets/Home_Screen/Reel_image/r4.jpeg",
    "Assets/Home_Screen/Reel_image/r5.jpeg",
    "Assets/Home_Screen/Reel_image/r6.jpeg",
    "Assets/Home_Screen/Reel_image/r7.png",
  ];

  List post = [
    "Assets/Home_Screen/Post_image/p1.jpeg",
    "Assets/Home_Screen/Post_image/p2.jpeg",
    "Assets/Home_Screen/Post_image/p3.jpeg",
    "Assets/Home_Screen/Post_image/p4.jpeg",
    "Assets/Home_Screen/Post_image/p5.jpeg",
    "Assets/Home_Screen/Post_image/p6.jpeg",
    "Assets/Home_Screen/Post_image/p7.jpeg",
    "Assets/Home_Screen/Post_image/p8.jpeg",
    "Assets/Home_Screen/Post_image/p9.jpeg",
    "Assets/Home_Screen/Post_image/p10.jpeg",
    "Assets/Home_Screen/Post_image/p11.jpeg",
    "Assets/Home_Screen/Post_image/p12.jpeg",
    "Assets/Home_Screen/Post_image/p13.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Text(
                    "🎻Iภ𝕤τⱥgrคʍ",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 160),
                  Icon(Icons.favorite_border, size: 27, color: Colors.black),
                  SizedBox(width: 20),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(Icons.near_me_outlined,
                        size: 27, color: Colors.black),
                  ),
                ],
              ),
            ),
            Container(
              height: 80,
              width: double.infinity,
              alignment: Alignment.center,
              color: Colors.white,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: reelimage
                      .asMap()
                      .entries
                      .map((e) => Reel(reelimage[e.key]))
                      .toList(),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 400,
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                      children: post
                          .asMap()
                          .entries
                          .map((e) => Post(post[e.key]))
                          .toList()),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget Reel(String image) {
    return Container(
        height: 70,
        width: 70,
        alignment: Alignment.center,
        margin: EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.pink,width: 1.5),
            color: Colors.white),
        child: CircleAvatar(
          backgroundImage: AssetImage("$image"),
          radius: 30,
        )
    );
  }

  Widget Post(String img) {
    return Column(
      children: [
        Container(
          height: 400,
          width: double.infinity,
          color: Colors.red[100],
          child: Image.asset(
            "$img",
            fit: BoxFit.fill,
          ),
        ),
        Container(
          height: 50,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border,
                          size: 27,
                          color: Colors.black,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.chat_bubble_outline,
                          size: 27,
                          color: Colors.black,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.near_me_outlined,
                          size: 27,
                          color: Colors.black,
                        )),
                  ],
                ),
              ),
              Container(
                height: 50,
                width: 50,
                child: Icon(Icons.bookmark_border),
              )
            ],
          ),
        ),
      ],
    );
  }
}
