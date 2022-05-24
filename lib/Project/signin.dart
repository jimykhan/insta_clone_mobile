import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: SizedBox(
                      height: 50,
                      width: size.width * 0.53,
                      child: Card(
                        elevation: 2,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Icon(CupertinoIcons.game_controller),
                              Text("Continue with Google")
                            ],
                          ),
                        ),
                      )),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    children: [
                      Container(
                        width: size.width * 0.43,
                        height: 1,
                        color: Colors.grey.shade300,
                      ),
                      const Text("OR"),
                      Container(
                        width: size.width * 0.43,
                        height: 1,
                        color: Colors.grey.shade300,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                    "Email",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
                textField(context, ""),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                    "Password",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
                textField(context, ""),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Container(
                    width: size.width,
                    height: 45,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Sign In",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forgot password?",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.normal),
                      )),
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: InkWell(
                    onTap: () {},
                    child: RichText(
                        text: const TextSpan(
                            text: "No account? ",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                            children: [
                          TextSpan(
                              text: "Create yours now",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.blue))
                        ])),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget textField(
    BuildContext context,
    txt,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
      child: SizedBox(
        height: 45,
        child: TextField(
          decoration: InputDecoration(
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 2.0),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 2.0),
              ),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
        ),
      ),
    );
  }
}
