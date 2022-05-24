import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:flutter_signin_button/flutter_signin_button.dart";

class SignUp2 extends StatefulWidget {
  const SignUp2({Key? key}) : super(key: key);

  @override
  _SignUp2State createState() => _SignUp2State();
}

class _SignUp2State extends State<SignUp2> {
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
                      // width: size.width * 0.57,
                      child: Card(
                        elevation: 0,
                        child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: SignInButton(
                              Buttons.Google,
                              text: "Continue with Google",
                              onPressed: () {},
                            )),
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
                // const Padding(
                //   padding: const EdgeInsets.only(left: 12.0),
                //   child: Text(
                //     "Enter Delivery Postcode",
                //     style: TextStyle(color: Colors.black, fontSize: 16),
                //   ),
                // ),
                textField(context, "Enter Delivery Postcode"),
                // const SizedBox(
                //   height: 10,
                // ),
                // const Padding(
                //   padding: const EdgeInsets.only(left: 12.0),
                //   child: Text(
                //     "Password",
                //     style: TextStyle(color: Colors.black, fontSize: 16),
                //   ),
                // ),
                // textField(context, ""),
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
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: InkWell(
                    onTap: () {},
                    child: RichText(
                        text: const TextSpan(
                            text: "Activation email not recieved? ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                letterSpacing: 0.35),
                            children: [
                          TextSpan(
                              text: "Resend email",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.blue))
                        ])),
                  ),
                ),
                const SizedBox(
                  height: 20,
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
                            text: "Already have an account? ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                letterSpacing: 0.25),
                            children: [
                          TextSpan(
                              text: "Sign in now",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.blue))
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
              hintText: txt,
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
