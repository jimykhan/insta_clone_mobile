import 'package:flutter/material.dart';

import 'UI/story.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            Container(
              height: 180,
              padding: const EdgeInsets.all(8.0),
              color: Colors.grey,
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("assets/images/Grid6.png")),
                    title: Text(
                      "Logan Veawer",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    subtitle: Text(
                      "Today, 20:16 PM",
                      style: TextStyle(color: Colors.white.withOpacity(0.5)),
                    ),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StoryPageView())),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
