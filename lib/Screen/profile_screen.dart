import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  List reelimage = [
    "Assets/Home_Screen/Reel_image/r1.jpeg",
    "Assets/Home_Screen/Reel_image/r2.jpeg",
    "Assets/Home_Screen/Reel_image/r3.jpeg",
    "Assets/Home_Screen/Reel_image/r4.jpeg",
    "Assets/Home_Screen/Reel_image/r5.jpeg",
    "Assets/Home_Screen/Reel_image/r6.jpeg",
    "Assets/Home_Screen/Reel_image/r7.png",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("kaushik_2704",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
          actions: [
            Icon(Icons.add_box_outlined,size: 25,color: Colors.black),
            SizedBox(width: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.menu,size: 25,color: Colors.black),
            ),
          ],
          backgroundColor: Colors.white,elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 120,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("Assets/Home_Screen/Reel_image/r3.jpeg",),radius: 40,
                          ),
                          Text("Devil😈😈😈",style: TextStyle(fontSize: 20,color: Colors.black),),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Info(6, "Posts"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Info(1000000, "Followers"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Info(0, "Following"),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 35,
                  width: double.infinity,
                //  color: Colors.red[100],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 35,
                        width: 150,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade300
                        ),
                        child: Text("Edit profile",style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),),
                      ),
                      Container(
                        height: 35,
                        width: 150,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade300
                        ),
                        child: Text("Share profile",style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),),
                      ),
                      Container(
                        height: 35,
                        width: 35,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade300
                        ),
                        child: Icon(Icons.person_add,color: Colors.black,size: 20,)
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Story highlight",style: TextStyle(fontSize: 20,color: Colors.black),),
              ),
              Container(
                height: 80,
                width: double.infinity,
               // color: Colors.white,
                alignment: Alignment.center,
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 30,
                  width: double.infinity,
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.grid_view,size: 30,color: Colors.black,),
                      Icon(Icons.person_pin_outlined,size: 30,color: Colors.black,),
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
            ],
          ),
        ),
      ),
    );
  }

  Widget Info(int num,String name)
  {
    return Column(
      children: [
        Text("$num",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        Text("$name",style: TextStyle(fontSize: 20),),
      ],
    );
  }

  Widget Reel(String image) {
    return Container(
        height: 70,
        width: 70,
        margin: EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.pink),
            color: Colors.white
        ),
        child: CircleAvatar(
          backgroundImage: AssetImage("$image"),
          radius: 30,
        ));
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
