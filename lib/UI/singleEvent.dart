import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SingleEvent extends StatefulWidget {
  const SingleEvent({Key? key}) : super(key: key);

  @override
  _SingleEventState createState() => _SingleEventState();
}

class _SingleEventState extends State<SingleEvent> {
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
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 46,
                ),
                Container(
                  height: size.height * 0.91,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
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
                          width: size.width,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
