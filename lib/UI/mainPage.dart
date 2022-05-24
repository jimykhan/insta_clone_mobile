import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:social/Data/GridViewData.dart';
import 'package:social/UI/Profile.dart';
import 'package:social/UI/comments.dart';
import 'package:social/UI/messages.dart';
import 'package:social/UI/story.dart';
import 'package:social/widgets/shareDialogue.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<String> stories = [
    "assets/images/Grid2.png",
    "assets/images/Grid1.png",
    "assets/images/Grid4.png",
    "assets/images/Grid5.png",
    "assets/images/Grid3.png",
  ];
  List<String> storyNames = [
    "our Story",
    "Lana smith",
    "Joe Evana",
    "Zack paul",
    "karena",
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
            height: size.height,
            width: size.width,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.02560492,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.02074357),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Image.asset(
                            "assets/icons/Camera.png",
                            color: Colors.black,
                            height: 25,
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.30557678,
                        ),
                        Text(
                          "POITERS",
                          style: TextStyle(
                              fontSize: size.width * 0.03255767762,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: size.width * 0.02546473135,
                        ),
                        Image.asset(
                          "assets/icons/LocationIcon.png",
                          height: 13,
                        ),
                        // SizedBox(
                        //   width: size.width * 0.11459129,
                        // ),
                        Spacer(),
                        InkWell(
                          onTap: () {},
                          child: Image.asset(
                            "assets/icons/AddPost.png",
                            color: Colors.black,
                            height: 22,
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.03055767762,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Image.asset(
                            "assets/icons/Heart.png",
                            color: Colors.black,
                            height: 20,
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.03055767762,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Messages()));
                          },
                          child: Image.asset(
                            "assets/icons/Mail.png",
                            color: Colors.black,
                            height: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.012800245807,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: size.width * 0.02037179),
                    child: Container(
                        // color: Colors.grey,
                        height: size.height * 0.1174065,
                        width: double.infinity,
                        child: ListView.builder(
                          itemCount: stories.length ,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: size.width * 0.02037179),
                              child: InkWell(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => StoryPageView())),
                                child: Container(
                                  height: size.height * 0.10498016,
                                  width: size.width * 0.15788133,
                                  child: Column(
                                    children: [
                                      index == 0
                                          ? Stack(
                                              children: [
                                                CircleAvatar(
                                                  radius: size.width *
                                                      0.06619419404,
                                                  backgroundImage: AssetImage(
                                                      stories[index]),
                                                ),
                                                Positioned(
                                                    right: 0,
                                                    bottom: 0,
                                                    child: Image.asset(
                                                        "assets/icons/add.png"))
                                              ],
                                            )
                                          : CircleAvatar(
                                              radius:
                                                  size.width * 0.06619419404,
                                              backgroundImage:
                                                  AssetImage(stories[index]),
                                            ),
                                      SizedBox(
                                        height: size.height * 0.00640123,
                                      ),
                                      Text(
                                        storyNames[index],
                                        style: TextStyle(
                                            fontSize:
                                                size.width * 0.03055767762),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        )),
                  ),
                  // SizedBox(
                  //   height: size.height * 0.00640123,
                  // ),
                  // const Divider(),
                  Container(
                      width: size.width,
                      color: Colors.grey.shade300,
                      height: 0.5),
                  // Container(
                  //   height: size.height * 0.795,
                  //   child: ListView.builder(
                  //       itemCount: 5,
                  //       itemBuilder: (context, index) {
                  //         return
                  //       }),

                  // )
                  post(context, size),
                  post(context, size),
                  post(context, size),
                  post(context, size),
                  post(context, size),
                  post(context, size),
                ],
              ),
            )),
      ),
    );
  }

  Widget post(BuildContext context, size) {
    return Padding(
      padding: const EdgeInsets.only(top: 0.0),
      child: Container(
        // color: Colors.grey.shade300,
        height: size.height * 0.67,
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profile()));
              },
              child: ListTile(
                leading: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Profile()));
                  },
                  child: const CircleAvatar(
                    backgroundImage: AssetImage("assets/images/Grid2.png"),
                  ),
                ),
                title: const Text(
                  "Lanasmith",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: const Text("Poitiers, France"),
                trailing: Image.asset(
                  "assets/icons/ThreeDots.png",
                  cacheHeight: 27,
                ),
              ),
            ),
            Container(
                width: size.width,
                // color: Colors.grey,
                height: size.height * 0.45209218,
                child:
                    Image.asset("assets/images/share1.png", fit: BoxFit.cover)),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 5, right: 20),
              child: Container(
                // color: Colors.grey,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        print(size.width);
                      },
                      child: Image.asset(
                        "assets/icons/Heart.png",
                        color: Colors.black,
                        // width: size.width * 0.05208333,
                        height: size.height * 0.03378378,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Comments()));
                      },
                      child: Image.asset(
                        "assets/icons/Comments.png",
                        color: Colors.black,
                        height: size.height * 0.03378378,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      onTap: () {
                        showDiologue(context);
                      },
                      child: Image.asset(
                        "assets/icons/SendMessage.png",
                        height: size.height * 0.03378378,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {},
                      child: Image.asset(
                        "assets/icons/Save.png",
                        cacheHeight: 22,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // color: Colors.grey,
              child: Padding(
                padding: EdgeInsets.only(left: 16, top: 3, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 80,
                      child: InkWell(
                        onTap: () {},
                        child: Stack(
                          children: [
                            CircleAvatar(
                              radius: size.width * 0.03385417,
                              backgroundImage:
                                  AssetImage("assets/images/YelGirl.png"),
                            ),
                            Positioned(
                              left: 10,
                              child: CircleAvatar(
                                radius: size.width * 0.03385417,
                                backgroundImage:
                                    AssetImage("assets/images/BlueGirl.png"),
                              ),
                            ),
                            Positioned(
                                left: 20,
                                child: CircleAvatar(
                                  radius: size.width * 0.03385417,
                                  backgroundImage:
                                      AssetImage("assets/images/Boy1.png"),
                                )),
                            Positioned(
                              left: 30,
                              child: CircleAvatar(
                                radius: size.width * 0.03385417,
                                backgroundImage:
                                    AssetImage("assets/images/BlueGirl.png"),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                          text: 'liked ',
                          style: TextStyle(color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'yanna_summer',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: ' and ',
                                style: TextStyle(color: Colors.black)),
                            TextSpan(
                                text: '12k more',
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ]),
                    )
                  ],
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 15),
            //   child: Container(
            //     height: 0.5,
            //     color: Colors.grey,
            //     width: size.width,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
