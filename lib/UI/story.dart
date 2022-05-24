import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:story_view/story_view.dart';

class StoryPageView extends StatefulWidget {
  @override
  _StoryPageViewState createState() => _StoryPageViewState();
}

class _StoryPageViewState extends State<StoryPageView> {
  final controller = StoryController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final List<StoryItem> storyItems = [
      // StoryItem.text(
      //     title: '''“When you talk, you are only repeating something you know.
      //  But if you listen, you may learn something new.”
      //  – Dalai Lama''', backgroundColor: Colors.blueGrey),
      StoryItem.inlineProviderImage(AssetImage("assets/images/Grid1.png")),
      StoryItem.inlineProviderImage(AssetImage("assets/images/Grid7.png")),
      StoryItem.inlineProviderImage(AssetImage("assets/images/Grid3.png")),
      StoryItem.inlineProviderImage(AssetImage("assets/images/Grid1.png")),
      StoryItem.inlineProviderImage(AssetImage("assets/images/Grid7.png")),
      // StoryItem.pageImage(

      //     url:
      //         "https://images.unsplash.com/photo-1553531384-cc64ac80f931?ixid=MnwxMjA3fDF8MHxzZWFyY2h8MXx8bW91bnRhaW58ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      //     controller: controller),
      // StoryItem.pageImage(
      //     url: "https://wp-modula.com/wp-content/uploads/2018/12/gifgif.gif",
      //     controller: controller,
      //     imageFit: BoxFit.contain),
    ];
    return SafeArea(
      child: Material(
          child: Scaffold(
        body: Container(
          color: Colors.black,
          height: size.height,
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: size.height * 0.88,
                  child: Stack(
                    children: [
                      StoryView(
                        storyItems: storyItems,
                        controller: controller,
                        inline: false,
                        repeat: false,
                        onComplete: _close,
                      ),
                      Positioned(
                          top: 10,
                          child: Container(
                            width: size.width - 10,
                            child: ListTile(
                                leading: CircleAvatar(
                                  radius: 20,
                                  backgroundImage:
                                      AssetImage("assets/images/Grid2.png"),
                                ),
                                title: Text("Joanna_evans",
                                    style: TextStyle(
                                      color: Colors.white,
                                    )),
                                subtitle: Row(
                                  children: [
                                    Icon(
                                      CupertinoIcons.clock,
                                      color: Colors.grey.shade300,
                                      size: 18,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "3h ago",
                                      style: TextStyle(
                                          color: Colors.grey.shade300),
                                    ),
                                  ],
                                ),
                                trailing: InkWell(
                                    onTap: () {
                                      _close();
                                    },
                                    child: Icon(Icons.close,
                                        color: Colors.white))),
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
                  child: SingleChildScrollView(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 40,
                              width: size.width * 0.7,
                              child: TextField(
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                    isDense: true,
                                    hintText: "Leave a comment...",
                                    hintStyle: TextStyle(
                                        fontSize: 13,
                                        letterSpacing: 1,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w100),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(50),
                                        borderSide:
                                            BorderSide(color: Colors.white24)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(50),
                                        borderSide:
                                            BorderSide(color: Colors.white24)),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(50),
                                        borderSide:
                                            BorderSide(color: Colors.white24))),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Icon(
                              CupertinoIcons.heart,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Image.asset("assets/icons/SendMessage.png",
                                height: size.height * 0.02578378,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }

  void _close() {
    Navigator.pop(context);
  }
}
