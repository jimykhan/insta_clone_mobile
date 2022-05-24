import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:riverpod/src/provider.dart';
import 'package:social/UI/login.dart';
import 'package:social/provider/providers.dart';
import 'package:social/services/auth_service.dart';
import 'package:social/utils/utils.dart';
import '../controllers/controllers.dart';



class Signup extends HookConsumerWidget {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    AuthService authService = ref.read(authServiceProvider);
    useEffect((){

      Future.microtask(() async{});
      return (){};
    },
      const [],
    );
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              SizedBox(
                height: size.height * 0.42376136,
                width: size.width,
                child: Image.asset(
                  "assets/images/BackgroundHalf.png",
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: size.height * 0.17923441,
                child: SingleChildScrollView(
                  child: Container(
                      height: size.height * 0.86032518,
                      width: size.width,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25)),
                          color: Colors.white),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: size.height * 0.02816541,
                            ),
                            Center(
                                child:
                                    Image.asset("assets/icons/Indicator.png")),
                            SizedBox(
                              height: size.height * 0.02560492,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 28),
                              child:
                                  Image.asset("assets/text/WelcomeBack!.png"),
                            ),
                            SizedBox(
                              height: size.height * 0.02560492,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 28),
                              child: Image.asset(
                                  "assets/text/LoginToContinue2.png"),
                            ),
                            SizedBox(
                              height: size.height * 0.02560492,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 28),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap:(){
                                      authService.faceBookLogin();
                                    },
                                    child: Container(
                                        width: size.width * 0.25210084,
                                        height: size.height * 0.06401229,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Colors.indigo[600],
                                        ),
                                        child: const Icon(MdiIcons.facebook, size: 35, color: Colors.white,)),
                                  ),
                                  Container(
                                      width: size.width * 0.25210084,
                                      height: size.height * 0.06401229,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.black,
                                      ),
                                      child: const Icon(MdiIcons.apple, size: 35, color: Colors.white,)),
                                  Container(
                                    width: size.width * 0.25210084,
                                    height: size.height * 0.06401229,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                        border: Border.all(color: Colors.grey)),
                                    child: const Icon(MdiIcons.googlePlus, size: 40, color: Colors.green,)
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.02560492,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 28),
                              child: Image.asset("assets/text/Name.png"),
                            ),
                            SizedBox(
                              height: size.height * 0.02560492,
                            ),
                            Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: size.width * 0.07130125),
                                child: SizedBox(
                                  height: size.height * 0.0614518,
                                  child: TextField(
                                    controller: nameController,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    ),
                                  ),
                                )),
                            SizedBox(
                              height: size.height * 0.02560492,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 28),
                              child: Image.asset("assets/text/Email.png"),
                            ),
                            SizedBox(
                              height: size.height * 0.02560492,
                            ),
                            Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: size.width * 0.07130125),
                                child: SizedBox(
                                  height: size.height * 0.0614518,
                                  child: TextField(
                                    controller: emailController,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        suffixIcon: Image.asset(
                                            "assets/icons/CheckCircle.png")),
                                  ),
                                )),
                            SizedBox(
                              height: size.height * 0.02560492,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 28),
                              child: Image.asset("assets/text/Password.png"),
                            ),
                            SizedBox(
                              height: size.height * 0.02560492,
                            ),
                            Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: size.width * 0.07130125),
                                child: SizedBox(
                                  height: size.height * 0.0614518,
                                  child: TextField(
                                    controller: passwordController,
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        suffixIcon:
                                            const Icon(Icons.remove_red_eye)),
                                  ),
                                )),
                            SizedBox(
                              height: size.height * 0.02560492,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: size.width * 0.07130125),
                              child: InkWell(
                                  onTap: () {
                                    if(nameController.text.isNotEmpty && emailController.text.isNotEmpty && passwordController.text.isNotEmpty)
                                      {
                                        FirebaseUtility.signUpWithEmailPassword(email :emailController.text, password : passwordController.text, context: context);
                                        FirebaseUtility.add(
                                            doc: {
                                              "name" : nameController.text,
                                              "email" : emailController.text,
                                              "Password" : passwordController.text
                                            },
                                            collectionPath: "users",);
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => const Login()));
                                        Common.showSnackBar("Account Successfully Created", context);
                                      }
                                  },
                                  child: Container(
                                    height: size.height * 0.07141518,
                                    width: size.width,
                                    decoration: BoxDecoration(
                                        color: const Color(0xff79d0f1),
                                        border: Border.all(color: Colors.grey),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: const Center(
                                        child: Text(
                                      "Create an account",
                                      style: TextStyle(fontSize: 15),
                                    )),
                                  )),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 70),
                              child: Row(
                                children: [
                                  const Text("Already have an account?"),
                                  InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => const Login()));
                                      },
                                      child: const Text(" login"))
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

