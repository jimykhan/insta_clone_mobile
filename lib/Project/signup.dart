import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                textField(context, "Enter your email"),
                const SizedBox(
                  height: 10,
                ),
                textField(context, "Enter a strong password"),
                const SizedBox(
                  height: 10,
                ),
                textField(context, "Confirm password"),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 40,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(5)),
                          child: TextButton(
                            onPressed: () {},
                            child: const Text("Back",
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 70,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              boxShadow: const <BoxShadow>[
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 0,
                                  spreadRadius: 3,
                                )
                              ],
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(5)),
                          child: TextButton(
                            onPressed: () {},
                            child: const Text("Next",
                                style: TextStyle(color: Colors.black)),
                          ),
                        )
                      ],
                    )),
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
                                letterSpacing: 0.65),
                            children: [
                          TextSpan(
                              text: "Resend email",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.blue))
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
                              fontSize: 17,
                            ),
                            children: [
                          TextSpan(
                              text: "Sign in now",
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
              hintText: txt,
              hintStyle: const TextStyle(fontSize: 17),
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
