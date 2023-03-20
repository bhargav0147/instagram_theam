import 'package:flutter/material.dart';
import 'package:instagram_theam/Screen/profileScreen.dart';
import 'package:instagram_theam/Screen/uploadScreen.dart';
class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);
  @override
  State<Navigation> createState() => _NavigationState();
}
class _NavigationState extends State<Navigation> {
  int i=0;
  List storyImage = [
    "assets/images/1.jpg",
    "assets/images/2.jpg",
    "assets/images/3.jpg",
    "assets/images/4.jpg",
    "assets/images/5.jpg",
    "assets/images/6.jpg",
    "assets/images/7.jpg",
    "assets/images/8.jpg",
    "assets/images/9.jpg",
    "assets/images/10.jpg",
    "assets/images/11.png",
  ];
  List postImage = [
    "assets/images/01.jpeg",
    "assets/images/02.jpeg",
    "assets/images/03.jpeg",
    "assets/images/04.png",
    "assets/images/05.jpeg",
    "assets/images/06.jpeg",
    "assets/images/07.jpeg",
    "assets/images/08.jpeg",
    "assets/images/09.jpeg",
    "assets/images/010.jpeg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
        leadingWidth: 150,
        backgroundColor: Colors.white,
        leading: Center(
          child: Text(
            "Instagram",
            style: TextStyle(
                letterSpacing: 2,
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Center(
                child: Icon(
              Icons.send,
              color: Colors.black,
              size: 25,
            )),
          )
        ],
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: i,
          onTap: (index) {
            setState(() {
              i=index;
              if(i==1)
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Upload(),));
                }
              if(i==2)
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Profile(),));
                }
            });
          },
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.add_circle), label: "Upload"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
      ]),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(storyImage[0]),
                        radius: 30,
                      ),
                      SizedBox(width: 10),
                      CircleAvatar(
                        backgroundImage: AssetImage(storyImage[1]),
                        radius: 30,
                      ),
                      SizedBox(width: 10),
                      CircleAvatar(
                        backgroundImage: AssetImage(storyImage[2]),
                        radius: 30,
                      ),
                      SizedBox(width: 10),
                      CircleAvatar(
                        backgroundImage: AssetImage(storyImage[3]),
                        radius: 30,
                      ),
                      SizedBox(width: 10),
                      CircleAvatar(
                        backgroundImage: AssetImage(storyImage[4]),
                        radius: 30,
                      ),
                      SizedBox(width: 10),
                      CircleAvatar(
                        backgroundImage: AssetImage(storyImage[5]),
                        radius: 30,
                      ),
                      SizedBox(width: 10),
                      CircleAvatar(
                        backgroundImage: AssetImage(storyImage[6]),
                        radius: 30,
                      ),
                      SizedBox(width: 10),
                      CircleAvatar(
                        backgroundImage: AssetImage(storyImage[7]),
                        radius: 30,
                      ),
                      SizedBox(width: 10),
                      CircleAvatar(
                        backgroundImage: AssetImage(storyImage[8]),
                        radius: 30,
                      ),
                      SizedBox(width: 10),
                      CircleAvatar(
                        backgroundImage: AssetImage(storyImage[9]),
                        radius: 30,
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Post(postImage[0]),
                SizedBox(height: 10,),
                Post(postImage[1]),
                SizedBox(height: 10,),
                Post(postImage[2]),
                SizedBox(height: 10,),
                Post(postImage[3]),
                SizedBox(height: 10,),
                Post(postImage[4]),
                SizedBox(height: 10,),
                Post(postImage[5]),
                SizedBox(height: 10,),
                Post(postImage[6]),
                SizedBox(height: 10,),
                Post(postImage[7]),
                SizedBox(height: 10,),
                Post(postImage[8]),
                SizedBox(height: 10,),
                Post(postImage[9]),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column Post(String pic) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(storyImage[10]),
              radius: 15,
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "marvelstudios",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "California",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 10),
        Image.asset(pic),
        SizedBox(height: 10),
        Row(
          children: [
            Icon(Icons.favorite,size: 30,color: Colors.red,),
            SizedBox(width: 15),
            Icon(Icons.comment,size: 30),
            SizedBox(width: 15),
            Icon(Icons.send,size: 30),
            SizedBox(width: 15),
            Spacer(),
            Icon(Icons.bookmark_border,size: 30),
          ],
        )
      ],
    );
  }
}
