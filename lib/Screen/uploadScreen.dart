import 'package:flutter/material.dart';

class Upload extends StatefulWidget {
  const Upload({Key? key}) : super(key: key);

  @override
  State<Upload> createState() => _UploadState();
}

class _UploadState extends State<Upload> {
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
        centerTitle: true,
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
          child: Text(
            "Gallary",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                fontSize: 20,
                color: Colors.black),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.camera_alt_outlined,color: Colors.black,size: 30,),
          )
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              gallary(1,2,3),
              gallary(4,5,6),
              gallary(7,8,9),
              gallary(0,1,2),
              gallary(3,4,5),
              gallary(6,7,8),
              gallary(9,0,1),
              gallary(2,3,4),
              gallary(5,6,7),
              gallary(8,9,0),
              gallary(1,2,3),
              gallary(4,5,6),
              gallary(7,8,9),
              gallary(0,1,2),
              gallary(3,4,5),
            ],
          ),
        ),
      )
    );
  }

  Row gallary(int a,int b,int c) {
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(postImage[a],height: 170,width: 125,),
                SizedBox(width: 5),
                Image.asset(postImage[b],height: 170,width: 125,),
                SizedBox(width: 5),
                Image.asset(postImage[c],height: 170,width: 125,),
  ],
    );
  }
}
