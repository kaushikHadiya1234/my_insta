import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 35,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black12,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Icon(Icons.search, size: 25, color: Colors.black),
                      ),
                      SizedBox(width: 20),
                      Text(
                        "Search",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black12,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Searchimage( "Assets/Home_Screen/Reel_image/r1.jpeg",
                  "Assets/Home_Screen/Reel_image/r2.jpeg",
                  "Assets/Home_Screen/Reel_image/r3.jpeg"),
              Searchimage("Assets/Home_Screen/Reel_image/r4.jpeg",
                  "Assets/Home_Screen/Reel_image/r5.jpeg",
                  "Assets/Home_Screen/Reel_image/r6.jpeg"),
              Searchimage( "Assets/Home_Screen/Reel_image/r7.png",
                "Assets/Home_Screen/Post_image/p1.jpeg",
                "Assets/Home_Screen/Post_image/p2.jpeg",),
              Searchimage( "Assets/Home_Screen/Post_image/p3.jpeg",
                  "Assets/Home_Screen/Post_image/p4.jpeg",
                  "Assets/Home_Screen/Post_image/p5.jpeg"),
              Searchimage("Assets/Home_Screen/Post_image/p6.jpeg",
                  "Assets/Home_Screen/Post_image/p7.jpeg",
                  "Assets/Home_Screen/Post_image/p8.jpeg"),
              Searchimage( "Assets/Home_Screen/Post_image/p9.jpeg",
                  "Assets/Home_Screen/Post_image/p10.jpeg",
                  "Assets/Home_Screen/Post_image/p11.jpeg")
            ],
          ),
        ),
      ),
    );
  }
  Widget Searchimage(String img,String img1,String img2)
  {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(height: 120,width: 120,color: Colors.greenAccent,child: Image.asset("$img",fit: BoxFit.fill,),),
          Container(height: 120,width: 120,color: Colors.greenAccent,child: Image.asset("$img1",fit: BoxFit.fill,),),
          Container(height: 120,width: 120,color: Colors.greenAccent,child: Image.asset("$img2",fit: BoxFit.fill,),),
        ],
      ),
    );
  }
}
