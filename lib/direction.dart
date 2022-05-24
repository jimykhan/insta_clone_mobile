import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:social/UI/event.dart';
import 'package:social/UI/near_you_setting.dart';
import 'package:social/UI/near_you_setting_business.dart';
import 'package:social/UI/searchResultsNearYou.dart';

class Directions extends StatefulWidget {
  const Directions({Key? key}) : super(key: key);

  @override
  _DirectionsState createState() => _DirectionsState();
}

class _DirectionsState extends State<Directions> {
  bool user = true;
  bool business = false;
  bool event = false;

  Set<Marker> marker = {};

  void onMapCreated(GoogleMapController controller) {
    setState(() {
      marker.add(Marker(
          markerId: MarkerId("value1"),
          position: const LatLng(34.036944, 71.619410)));
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            GoogleMap(
              mapType: MapType.normal,
              onMapCreated: onMapCreated,
              // markers: marker,
              initialCameraPosition: const CameraPosition(
                target: LatLng(34.036944, 71.619410),
                zoom: 15,
              ),
            ),
            Positioned(
              top: 60,
              right: 20,
              left: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        user
                            ? Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NearYouSetting()))
                            : Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        NearYouSettingBusiness()));
                      },
                      child: Icon(CupertinoIcons.bars, color: Colors.black)),
                  Row(
                    children: [
                      Text("POITERS   "),
                      Image.asset("assets/icons/LocationIcon.png")
                    ],
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SearchResultsNearYou()));
                      },
                      child: Icon(CupertinoIcons.search, color: Colors.black)),
                ],
              ),
            ),
            Positioned(
              top: 100,
              right: 20,
              left: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        user = true;
                        business = false;
                        event = false;
                      });
                    },
                    child: Column(
                      children: [
                        Text(
                          "User",
                          style: TextStyle(
                              color: user ? Colors.indigo : Colors.black),
                        ),
                        Container(
                          width: size.width * 0.29,
                          height: 2,
                          color: user ? Colors.indigo : Colors.white,
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        user = false;
                        business = true;
                        event = false;
                      });
                    },
                    child: Column(
                      children: [
                        Text("Business",
                            style: TextStyle(
                                color:
                                    business ? Colors.indigo : Colors.black)),
                        Container(
                          width: size.width * 0.29,
                          height: 2,
                          color: business ? Colors.indigo : Colors.white,
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        user = false;
                        business = false;
                        event = true;
                      });
                    },
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Events()));
                      },
                      child: Column(
                        children: [
                          Text("Event",
                              style: TextStyle(
                                  color: event ? Colors.indigo : Colors.black)),
                          Container(
                            width: size.width * 0.29,
                            height: 2,
                            color: event ? Colors.indigo : Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 10,
              right: 10,
              child: Container(
                height: 276,
                // width: 346,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                      ),
                      title: Text("Amozonico London",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black)),
                      trailing: CircleAvatar(
                          radius: 17, child: Icon(Icons.message, size: 18)),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 7),
                        child: Text(
                            "8450 W Third St, Los angeles 900048, Ujited State",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 13)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 73,
                            height: 32,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.pink.shade50,
                            ),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Pizza",
                                style:
                                    TextStyle(fontSize: 14, color: Colors.red),
                              ),
                            ),
                          ),
                          Container(
                            width: 96,
                            height: 32,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.green.shade50),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "American",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.green),
                              ),
                            ),
                          ),
                          Container(
                            width: 76,
                            height: 32,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.green.shade50),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Italian",
                                style:
                                    TextStyle(fontSize: 14, color: Colors.blue),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10),
                      child: Container(
                        width: size.width,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: InkWell(
                            onTap: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(),
                                Text(
                                  "Apple",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                                Icon(Icons.phone, color: Colors.white)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10),
                      child: Container(
                        width: size.width,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: InkWell(
                            onTap: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(),
                                Text(
                                  "Directions",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                                Icon(Icons.directions, color: Colors.white)
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
