import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Events extends StatefulWidget {
  const Events({Key? key}) : super(key: key);

  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {
  Set<Marker> marker = {};

  void onMapCreated(GoogleMapController controller) {
    setState(() {
      marker.add(Marker(
          markerId: MarkerId("value1"),
          position: const LatLng(34.036944, 71.619410)));
    });
  }

  bool interest = false;
  List<String> tabs = [
    "Anytime",
    "Today",
    "Tomarrow",
    "This Week",
    "This Month",
    "This Year",
  ];
  List<bool> check = [
    true,
    false,
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {},
          child: Icon(
            CupertinoIcons.search,
            size: 25,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        title: Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: EdgeInsets.only(left: 80),
            child: Row(
              children: [
                Text(
                  "POITERS",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  "assets/icons/LocationIcon.png",
                  cacheHeight: 12,
                )
              ],
            ),
          ),
        ),
        actions: [
          InkWell(
              onTap: () {}, child: Image.asset("assets/icons/WriteMessage.png"))
        ],
        elevation: 0,
      ),
      body: Container(
        height: size.height - 95,
        width: double.infinity,
        child: SingleChildScrollView(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 30,
                  width: double.infinity,
                  // color: Colors.green,
                  child: ListView.builder(
                      itemCount: tabs.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.0),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                for (int i = 0; i <= 5; i++) {
                                  i == index
                                      ? check[index] = true
                                      : check[i] = false;
                                  i == index ? print(check[index]) : print(i);
                                }
                              });
                            },
                            child: Container(
                              child: Column(
                                children: [
                                  Text(
                                    tabs[index],
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: check[index]
                                          ? Colors.indigo
                                          : Colors.black,
                                    ),
                                  ),
                                  Container(
                                    height: 3,
                                    width: 60,
                                    color: check[index]
                                        ? Colors.indigo
                                        : Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                Container(
                  width: size.width,
                  color: Colors.grey,
                  height: 0.5,
                ),
                check[0] /*AnyTime data*/
                    ? Container(
                        height: size.height - 160,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 45),
                                child: InkWell(
                                  onTap: () {
                                    showDiologue(context, size);
                                    // ********************************************************
                                  },
                                  child: Container(
                                      height: 200,
                                      width: size.width,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          "assets/images/Grid3.png",
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 30),
                                child: ListTile(
                                  leading: Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.black26),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Center(
                                      child: Text(
                                        "10",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ),
                                  ),
                                  title: Text(
                                    "Monday",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text(
                                    "December 2019",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  trailing: PopupMenuButton(
                                      itemBuilder: (BuildContext context) => [
                                            PopupMenuItem(
                                                child: Align(
                                                    alignment: Alignment.center,
                                                    child: Text("Options")))
                                          ],
                                      child: SizedBox(
                                        height: 20,
                                        child: ImageIcon(AssetImage(
                                          "assets/icons/ThreeDots.png",
                                        )),
                                      )),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 45),
                                child: Container(
                                  height: 120,
                                  width: size.width,
                                  // color: Colors.black,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Fashion Meetup",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        "Starta at 9:00am in Los Angeles",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 12),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                interest = !interest;
                                              });
                                            },
                                            child: Container(
                                                width: 90,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.black26),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    color: interest
                                                        ? Colors
                                                            .lightGreen.shade600
                                                        : Colors.white),
                                                child: interest
                                                    ? Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceAround,
                                                        children: [
                                                          Icon(
                                                            Icons.check,
                                                            size: 18,
                                                            color: Colors.white,
                                                          ),
                                                          Text("Interested",
                                                              style: TextStyle(
                                                                  fontSize: 13,
                                                                  color: Colors
                                                                      .white))
                                                        ],
                                                      )
                                                    : Center(
                                                        child: Text(
                                                            "Interested ? ",
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                color: Colors
                                                                    .black)),
                                                      )),
                                          ),
                                          CircleAvatar(
                                            radius: 15,
                                            backgroundColor: Colors.grey,
                                            child: Text(
                                              "+9",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    : check[1] /*Today*/
                        ? Container(
                            height: size.height - 160, color: Colors.blue)
                        : check[2] /*AnyTime data*/
                            ? Container(
                                height: size.height - 160, color: Colors.yellow)
                            : check[3] /*Tomarrow data*/
                                ? Container(
                                    height: size.height - 160,
                                    color: Colors.green)
                                : check[4] /*this Week data*/
                                    ? Container(
                                        height: size.height - 160,
                                        color: Colors.pink)
                                    : check[4] /*This month data*/
                                        ? Container(
                                            height: size.height - 160,
                                            color: Colors.pink)
                                        : Container(
                                            /*this Year data*/
                                            height: size.height - 160,
                                            color: Colors.red)
              ],
            ),
          ),
        ),
      ),
    );
  }

  showDiologue(BuildContext context, size) {
    return showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: Material(
              type: MaterialType.transparency,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 50,
                  // left: size.width * 0.04074357,
                  // right: size.width * 0.04074357
                ),
                child: Container(
                  height: size.height * 0.91,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Image.asset("assets/icons/Indicator.png"),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/Grid3.png'),
                          ),
                          title: Text(
                            "Gunther Ackne",
                            style: TextStyle(color: Colors.black),
                          ),
                          subtitle: Text("3 days ago"),
                          trailing: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.green,
                            ),
                            height: 25,
                            width: 90,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  Icons.check,
                                  size: 18,
                                  color: Colors.white,
                                ),
                                Text("Interested",
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.white)),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                              height: 165,
                              width: size.width,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  "assets/images/car1.jpg",
                                  fit: BoxFit.cover,
                                ),
                              )),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            "2019 DUB Show at Los Angeles Auto Show",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.alarm_on,
                                color: Colors.grey.shade600,
                                size: 30,
                              ),
                            ),
                            title: Text("12 December, 2019",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18)),
                            subtitle: Text(
                              "From 9:00am to 6:00pm",
                              style: TextStyle(fontSize: 15),
                            )),
                        ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Text("\$",
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.grey.shade600)),
                            ),
                            title: Text("\$60 -\$90",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18)),
                            subtitle: Text(
                              "+30% Taxes",
                              style: TextStyle(fontSize: 15),
                            )),
                        Container(
                          height: 200,
                          width: size.width - 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25)),
                            color: Colors.black,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 15.0),
                                child: Center(
                                  child: Image.asset(
                                      "assets/icons/Indicator.png",
                                      color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Text(
                                  "Address",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                              SizedBox(height: 8),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Container(
                                  height: 110,
                                  width: size.width,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white,
                                  ),
                                  child: GoogleMap(
                                    mapType: MapType.hybrid,
                                    onMapCreated: onMapCreated,
                                    markers: marker,
                                    initialCameraPosition: const CameraPosition(
                                      target: LatLng(34.036944, 71.619410),
                                      zoom: 14,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
