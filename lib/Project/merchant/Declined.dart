import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Declined extends StatefulWidget {
  const Declined({Key? key}) : super(key: key);

  @override
  _DeclinedState createState() => _DeclinedState();
}

class _DeclinedState extends State<Declined> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        // backgroundColor: Colors.grey.shade800,
        body: SafeArea(
      child: Container(
        height: size.height,
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.grey.shade200,
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: CircleAvatar(
                      backgroundColor: Colors.redAccent,
                      radius: 23,
                      child: Icon(
                        Icons.close,
                        size: 35,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      "Declined",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: Text(
                      "2500.00",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            rowData(context, size, "Merchant Name", "Sherlock"),
            rowData(context, size, "Merchant Id", "737"),
            rowData(context, size, "Time", "02:25:45 pm"),
            rowData(context, size, "User Id", "1999"),
            rowData(context, size, "Transaction Id", "12736584826"),
          ],
        ),
      ),
    ));
  }

  Widget rowData(BuildContext context, size, name, data) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${name} ",
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 2,
          ),
          Text("${data}", style: TextStyle(color: Colors.black, fontSize: 16))
        ],
      ),
    );
  }
}
