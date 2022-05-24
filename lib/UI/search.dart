import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: size.height * 0.03200615),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: size.width * 0.04074357),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: size.height * 0.05901229,
                      width: size.width * 0.8,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  size.height * 0.6401229),
                            ),
                            prefixIcon: Image.asset("assets/icons/Search.png"),
                            hintText: "search"),
                      ),
                    ),
                    InkWell(
                        onTap: () {
                          showDiologue(context, size);
                        },
                        child: Image.asset("assets/icons/menu.png")),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.01920369,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: size.width * 0.04074357),
                child: SizedBox(
                  height: size.height - 170,
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 5,
                      ),
                      itemBuilder: (BuildContext context, index) {
                        return Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.circular(10)),
                        );
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
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
                top: 450,
                // left: size.width * 0.04074357,
                // right: size.width * 0.04074357
              ),
              child: Container(
                // height: MediaQuery.of(context).size.height * 0.8,
                height: 360,
                width: size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(size.height * 0.0320061),
                        topRight: Radius.circular(size.height * 0.0320061))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Center(
                        child: Image.asset(
                          "assets/icons/Indicator.png",
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 27.0),
                      child: Text(
                        "Interest",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 27.0, top: 10),
                      child: Text(
                        "bla bla bla",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Color(0xff8f92a1)),
                      ),
                    ),
                    Center(
                      child: Wrap(
                        children: [
                          ActionChip(
                            elevation: 0,
                            padding: EdgeInsets.all(2.0),
                            label: Text(
                              '# sport',
                              style: TextStyle(color: Color(0xff7737ff)),
                            ),
                            backgroundColor: Colors.white,
                            shape: StadiumBorder(
                                side: BorderSide(
                              width: 1,
                              color: Color(0xff7737ff),
                            )),
                            onPressed: () {},
                          ),
                          ActionChip(
                            elevation: 0,
                            padding: EdgeInsets.all(2.0),
                            label: Text(
                              '# sport',
                              style: TextStyle(color: Color(0xff7737ff)),
                            ),
                            backgroundColor: Colors.white,
                            shape: StadiumBorder(
                                side: BorderSide(
                              width: 1,
                              color: Color(0xff7737ff),
                            )),
                            onPressed: () {},
                          ),
                          ActionChip(
                            elevation: 0,
                            padding: EdgeInsets.all(2.0),
                            label: Text(
                              '# sport',
                              style: TextStyle(color: Color(0xff7737ff)),
                            ),
                            backgroundColor: Colors.white,
                            shape: StadiumBorder(
                                side: BorderSide(
                              width: 1,
                              color: Color(0xff7737ff),
                            )),
                            onPressed: () {},
                          ),
                          ActionChip(
                            elevation: 0,
                            padding: EdgeInsets.all(2.0),
                            label: Text(
                              '# sport',
                              style: TextStyle(color: Color(0xff7737ff)),
                            ),
                            backgroundColor: Colors.white,
                            shape: StadiumBorder(
                                side: BorderSide(
                              width: 1,
                              color: Color(0xff7737ff),
                            )),
                            onPressed: () {},
                          ),
                          ActionChip(
                            elevation: 0,
                            padding: EdgeInsets.all(2.0),
                            label: Text(
                              '# sport',
                              style: TextStyle(color: Color(0xff7737ff)),
                            ),
                            backgroundColor: Colors.white,
                            shape: StadiumBorder(
                                side: BorderSide(
                              width: 1,
                              color: Color(0xff7737ff),
                            )),
                            onPressed: () {},
                          ),
                          ActionChip(
                            elevation: 0,
                            padding: EdgeInsets.all(2.0),
                            label: Text(
                              '# sport',
                              style: TextStyle(color: Color(0xff7737ff)),
                            ),
                            backgroundColor: Colors.white,
                            shape: StadiumBorder(
                                side: BorderSide(
                              width: 1,
                              color: Color(0xff7737ff),
                            )),
                            onPressed: () {},
                          ),
                          ActionChip(
                            elevation: 0,
                            padding: EdgeInsets.all(2.0),
                            label: Text(
                              '# sport',
                              style: TextStyle(color: Color(0xff7737ff)),
                            ),
                            backgroundColor: Colors.white,
                            shape: StadiumBorder(
                                side: BorderSide(
                              width: 1,
                              color: Color(0xff7737ff),
                            )),
                            onPressed: () {},
                          ),
                          ActionChip(
                            elevation: 0,
                            padding: EdgeInsets.all(2.0),
                            label: Text(
                              '# sport',
                              style: TextStyle(color: Color(0xff7737ff)),
                            ),
                            backgroundColor: Colors.white,
                            shape: StadiumBorder(
                                side: BorderSide(
                              width: 1,
                              color: Color(0xff7737ff),
                            )),
                            onPressed: () {},
                          ),
                          ActionChip(
                            elevation: 0,
                            padding: EdgeInsets.all(2.0),
                            label: Text(
                              '# sport',
                              style: TextStyle(color: Color(0xff7737ff)),
                            ),
                            backgroundColor: Colors.white,
                            shape: StadiumBorder(
                                side: BorderSide(
                              width: 1,
                              color: Color(0xff7737ff),
                            )),
                            onPressed: () {},
                          ),
                          ActionChip(
                            elevation: 0,
                            padding: EdgeInsets.all(2.0),
                            label: Text(
                              '# sport',
                              style: TextStyle(color: Color(0xff7737ff)),
                            ),
                            backgroundColor: Colors.white,
                            shape: StadiumBorder(
                                side: BorderSide(
                              width: 1,
                              color: Color(0xff7737ff),
                            )),
                            onPressed: () {},
                          ),
                          ActionChip(
                            elevation: 0,
                            padding: EdgeInsets.all(2.0),
                            label: Text(
                              '# sport',
                              style: TextStyle(color: Color(0xff7737ff)),
                            ),
                            backgroundColor: Colors.white,
                            shape: StadiumBorder(
                                side: BorderSide(
                              width: 1,
                              color: Color(0xff7737ff),
                            )),
                            onPressed: () {},
                          ),
                          ActionChip(
                            elevation: 0,
                            padding: EdgeInsets.all(2.0),
                            label: Text(
                              '# sport',
                              style: TextStyle(color: Color(0xff7737ff)),
                            ),
                            backgroundColor: Colors.white,
                            shape: StadiumBorder(
                                side: BorderSide(
                              width: 1,
                              color: Color(0xff7737ff),
                            )),
                            onPressed: () {},
                          ),
                          ActionChip(
                            elevation: 0,
                            padding: EdgeInsets.all(2.0),
                            label: Text(
                              '# sport',
                              style: TextStyle(color: Color(0xff7737ff)),
                            ),
                            backgroundColor: Colors.white,
                            shape: StadiumBorder(
                                side: BorderSide(
                              width: 1,
                              color: Color(0xff7737ff),
                            )),
                            onPressed: () {},
                          ),
                          ActionChip(
                            elevation: 0,
                            padding: EdgeInsets.all(2.0),
                            label: Text(
                              '# sport',
                              style: TextStyle(color: Color(0xff7737ff)),
                            ),
                            backgroundColor: Colors.white,
                            shape: StadiumBorder(
                                side: BorderSide(
                              width: 1,
                              color: Color(0xff7737ff),
                            )),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 56,
                          width: 130,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Color(0xff7737ff)),
                          child: Center(
                            child: Text("Send",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal)),
                          ),
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
