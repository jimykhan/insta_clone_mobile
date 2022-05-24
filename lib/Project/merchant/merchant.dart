import 'package:flutter/material.dart';

class Merchant extends StatefulWidget {
  const Merchant({Key? key}) : super(key: key);

  @override
  _MerchantState createState() => _MerchantState();
}

class _MerchantState extends State<Merchant> {
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
            children: [
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    SizedBox(
                        width: size.width * 0.5,
                        child: Text(
                          "Merchant Name : ",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        )),
                    Text("Sherlock",
                        style: TextStyle(color: Colors.black, fontSize: 20))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: TextField(
                    decoration: InputDecoration(
                  fillColor: Colors.white54,
                  filled: true,
                  floatingLabelStyle:
                      TextStyle(color: Colors.black, fontSize: 18),
                  hintText: "Enter amount in Pkr",
                  hintStyle: TextStyle(color: Colors.black, fontSize: 18),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green.shade400,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  width: size.width,
                  height: 50,
                  child: TextButton(
                    child: Text(
                      "Confirm",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    onPressed: () {},
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
