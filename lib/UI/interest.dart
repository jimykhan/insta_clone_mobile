import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Interest extends StatefulWidget {
  const Interest({Key? key}) : super(key: key);

  @override
  _InterestState createState() => _InterestState();
}

class _InterestState extends State<Interest> {
  List<String> text = ["Football", "Cricket", "Vollyball", "Squash", "Tennis"];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Container(
        height: size.height,
        width: size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.1,
              ),
              Container(
                height: size.height * 0.8837268,
                width: size.width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                        child: Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Image.asset("assets/icons/Indicator.png"),
                    )),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Centre d'interet",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "6/25",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Wrap(
                      children: const [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                              "these are the interest which will show here on the screens when user likes i mean users who have some interest"),
                        )
                      ],
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                      child: Text(
                        "SAISISSEZ VOTRE CENTRE D'INTERET",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            fontSize: 14),
                      ),
                    ),
                    const SizedBox(
                      height: 55,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "ball",
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 0.5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      child: Container(
                          height: size.height * 0.23352689,
                          width: size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade400,
                                  spreadRadius: 0.5,
                                  blurRadius: 1,
                                  offset: const Offset(0, 3),
                                )
                              ]),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: size.height * 0.01280245807,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: size.height * 0.01280245807),
                                  child: SizedBox(
                                    height: size.height * 0.04620983,
                                    child: Column(
                                      children: [
                                        Center(
                                            child: Text(
                                          text[0],
                                          style: const TextStyle(fontSize: 18),
                                        )),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: size.height * 0.01280245807),
                                  child: SizedBox(
                                    height: size.height * 0.04620983,
                                    child: Column(
                                      children: [
                                        Center(
                                            child: Text(
                                          text[1],
                                          style: const TextStyle(fontSize: 18),
                                        )),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: size.height * 0.01280245807),
                                  child: SizedBox(
                                    height: size.height * 0.04620983,
                                    child: Column(
                                      children: [
                                        Center(
                                            child: Text(
                                          text[2],
                                          style: const TextStyle(fontSize: 18),
                                        )),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Wrap(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 2),
                            child: InputChip(
                              label: Text(
                                '# BasketBall',
                                style: TextStyle(color: Colors.white),
                              ),
                              backgroundColor: Colors.indigo,
                              selectedColor: Colors.blue,
                              onSelected: (bool selected) {
                                setState(() {});
                              },
                              onDeleted: () {},
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 2),
                            child: InputChip(
                              label: Text(
                                '# FootBall',
                                style: TextStyle(color: Colors.white),
                              ),
                              backgroundColor: Colors.indigo,
                              selectedColor: Colors.blue,
                              onSelected: (bool selected) {
                                setState(() {});
                              },
                              onDeleted: () {},
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 2),
                            child: InputChip(
                              label: Text(
                                '# FoosBall',
                                style: TextStyle(color: Colors.white),
                              ),
                              backgroundColor: Colors.indigo,
                              selectedColor: Colors.blue,
                              onSelected: (bool selected) {
                                setState(() {});
                              },
                              onDeleted: () {},
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 2),
                            child: InputChip(
                              label: Text(
                                '# VollyBall',
                                style: TextStyle(color: Colors.white),
                              ),
                              backgroundColor: Colors.indigo,
                              selectedColor: Colors.blue,
                              onSelected: (bool selected) {
                                setState(() {});
                              },
                              onDeleted: () {},
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 2),
                            child: InputChip(
                              label: Text(
                                '# Cricket',
                                style: TextStyle(color: Colors.white),
                              ),
                              backgroundColor: Colors.indigo,
                              selectedColor: Colors.blue,
                              onSelected: (bool selected) {
                                setState(() {});
                              },
                              onDeleted: () {},
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 2),
                            child: InputChip(
                              label: Text(
                                '# Tennnis',
                                style: TextStyle(color: Colors.white),
                              ),
                              backgroundColor: Colors.indigo,
                              selectedColor: Colors.blue,
                              onSelected: (bool selected) {
                                setState(() {});
                              },
                              onDeleted: () {},
                            ),
                          )
                        ],
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: EdgeInsets.only(
                        left: size.width * 0.07130125,
                        right: size.width * 0.07130125,
                        bottom: 20,
                      ),
                      child: InkWell(
                          onTap: () {},
                          child: Container(
                            height: size.height * 0.07425426,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xff79d0f1),
                            ),
                            child: const Center(
                              child: Text(
                                "Next",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                          )),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
