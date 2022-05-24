import 'package:flutter/material.dart';
import 'package:social/Data/GridViewData.dart';

showDiologue(BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.4070087,
                  left: MediaQuery.of(context).size.width * 0.04074357,
                  right: MediaQuery.of(context).size.width * 0.04074357),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.59787479,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.015,
                    ),
                    Center(child: Image.asset("assets/icons/Indicator.png")),
                    SizedBox(
                      height:
                          MediaQuery.of(context).size.height * 0.00380245807,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal:
                              MediaQuery.of(context).size.width * 0.03074357),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Share",
                            style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width *
                                    0.05602241,
                                fontWeight: FontWeight.bold),
                          ),
                          Image.asset("assets/icons/share.png")
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01920369,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.06401229,
                      width: MediaQuery.of(context).size.width * 0.85,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  MediaQuery.of(context).size.height *
                                      0.6401229),
                            ),
                            prefixIcon: Image.asset(
                              "assets/icons/Search.png",
                              height: MediaQuery.of(context).size.height *
                                  0.0286541,
                            ),
                            hintText: "search"),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01929369,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal:
                              MediaQuery.of(context).size.width * 0.07174357),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/icons/group.png",
                            height:
                                MediaQuery.of(context).size.height * 0.05602241,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width *
                                0.02546473135,
                          ),
                          Text(
                            "create group",
                            style: TextStyle(
                                color: Color(0xff7737FF),
                                fontSize: MediaQuery.of(context).size.width *
                                    0.04583652,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01929369,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal:
                              MediaQuery.of(context).size.width * 0.04074357),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.20483933,
                        child: GridView.builder(
                          itemCount: sharePersons.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
                                  mainAxisSpacing:
                                      MediaQuery.of(context).size.width *
                                          0.0181971,
                                  crossAxisSpacing:
                                      MediaQuery.of(context).size.height *
                                          0.01929369),
                          itemBuilder: (BuildContext context, index) {
                            return Column(
                              children: [
                                CircleAvatar(
                                  radius: MediaQuery.of(context).size.height *
                                      0.032000615,
                                  backgroundImage:
                                      AssetImage(sharePersons[index]),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.00640123,
                                ),
                                Text(
                                  sharePersonsNames[index],
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.030557677762),
                                )
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01920369,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.06401229,
                      width: MediaQuery.of(context).size.width * 0.30557678,
                      decoration: BoxDecoration(
                          color: Color(0xff7737FF),
                          borderRadius: BorderRadius.circular(50)),
                      child: Center(
                        child: Text(
                          "Send",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      });
}
