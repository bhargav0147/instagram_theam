import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
        backgroundColor: Colors.white,
        leading: Center(
          child: InkWell(
            onTap: () => Navigator.pop(context),
            child: Icon(
              Icons.arrow_back_outlined,
              color: Colors.black,
              size: 30,
            ),
          ),
        ),
        title: Center(
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "marvelstudios",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  fontSize: 20,
                  color: Colors.black),
            ),
          ),
        ),
        actions: [

          Icon(
            Icons.notifications,
            color: Colors.black,
            size: 30,
          ),
          SizedBox(width: 20),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: PopupMenuButton(itemBuilder: (context) => [
              PopupMenuItem(child: Text("Report...",style: TextStyle(color: Colors.white,letterSpacing: 1),)),
              PopupMenuItem(child: Text("Block",style: TextStyle(color: Colors.white,letterSpacing: 1),)),
              PopupMenuItem(child: Text("About this account",style: TextStyle(color: Colors.white,letterSpacing: 1),)),
              PopupMenuItem(child: Text("Restrict",style: TextStyle(color: Colors.white,letterSpacing: 1),)),
              PopupMenuItem(child: Text("Hide your story",style: TextStyle(color: Colors.white,letterSpacing: 1),)),
              PopupMenuItem(child: Text("Copy profile URL",style: TextStyle(color: Colors.white,letterSpacing: 1),)),
              PopupMenuItem(child: Text("Show QR code",style: TextStyle(color: Colors.white,letterSpacing: 1),)),
              PopupMenuItem(child: Text("Share this profile",style: TextStyle(color: Colors.white,letterSpacing: 1),)),

            ],color: Colors.black,)
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/11.png",
                        height: 100,
                        width: 100,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "10",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                letterSpacing: 1),
                          ),
                          Text(
                            "Posts",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                letterSpacing: 1),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "38.4M",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                letterSpacing: 1),
                          ),
                          Text(
                            "Followers",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                letterSpacing: 1),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "88",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                letterSpacing: 1),
                          ),
                          Text(
                            "Following",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                letterSpacing: 1),
                          )
                        ],
                      ),
                    ]),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 30,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                          border: Border(
                        right: BorderSide(color: Colors.black),
                        left: BorderSide(color: Colors.black),
                        top: BorderSide(color: Colors.black),
                        bottom: BorderSide(color: Colors.black),
                      )),
                      child: Center(
                        child: Text(
                          "Following",
                          style: TextStyle(
                            letterSpacing: 1,color: Colors.black,fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                          border: Border(
                        right: BorderSide(color: Colors.black),
                        left: BorderSide(color: Colors.black),
                        top: BorderSide(color: Colors.black),
                        bottom: BorderSide(color: Colors.black),
                      )),
                      child: Center(
                        child: Text(
                          "Message",
                          style: TextStyle(
                            letterSpacing: 1,color: Colors.black,fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                          border: Border(
                        right: BorderSide(color: Colors.black),
                        left: BorderSide(color: Colors.black),
                        top: BorderSide(color: Colors.black),
                        bottom: BorderSide(color: Colors.black),
                      )),
                      child: Center(
                        child: Icon(
                          Icons.person_add_alt_outlined,size: 20,
                        )
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
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
                SizedBox(height: 15),
                Row(
                  children: [
                    Image.asset(postImage[9],height: 160,width: 120,),
                    SizedBox(width: 5),
                    Image.asset(postImage[8],height: 160,width: 120,),
                    SizedBox(width: 5),
                    Image.asset(postImage[7],height: 160,width: 120,),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Image.asset(postImage[6],height: 160,width: 120,),
                    SizedBox(width: 5),
                    Image.asset(postImage[5],height: 160,width: 120,),
                    SizedBox(width: 5),
                    Image.asset(postImage[4],height: 160,width: 120,),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Image.asset(postImage[3],height: 160,width: 120,),
                    SizedBox(width: 5),
                    Image.asset(postImage[2],height: 160,width: 120,),
                    SizedBox(width: 5),
                    Image.asset(postImage[1],height: 160,width: 120,),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Image.asset(postImage[6],height: 160,width: 120,),
                    SizedBox(width: 5),
                    Image.asset(postImage[0],height: 160,width: 120,),
                    SizedBox(width: 5),
                    Image.asset(postImage[9],height: 160,width: 120,),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Image.asset(postImage[9],height: 160,width: 120,),
                    SizedBox(width: 5),
                    Image.asset(postImage[8],height: 160,width: 120,),
                    SizedBox(width: 5),
                    Image.asset(postImage[7],height: 160,width: 120,),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Image.asset(postImage[6],height: 160,width: 120,),
                    SizedBox(width: 5),
                    Image.asset(postImage[5],height: 160,width: 120,),
                    SizedBox(width: 5),
                    Image.asset(postImage[4],height: 160,width: 120,),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Image.asset(postImage[3],height: 160,width: 120,),
                    SizedBox(width: 5),
                    Image.asset(postImage[2],height: 160,width: 120,),
                    SizedBox(width: 5),
                    Image.asset(postImage[1],height: 160,width: 120,),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Image.asset(postImage[6],height: 160,width: 120,),
                    SizedBox(width: 5),
                    Image.asset(postImage[0],height: 160,width: 120,),
                    SizedBox(width: 5),
                    Image.asset(postImage[9],height: 160,width: 120,),
                  ],
                ),
                SizedBox(height: 5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
