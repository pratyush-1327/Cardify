// ignore: unused_import
import 'package:cardify/authscreen.dart';
import 'package:cardify/provider/auth.provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    return ResponsiveSizer(builder: (context, orientation, ScreenType) {
      return Scaffold(
          body: Stack(
        children: <Widget>[
          Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/bg2.png"), fit: BoxFit.fill),
              ),
              child: Consumer<FireAuth>(
                builder: (context, value, child) {
                  return Stack(children: <Widget>[
                    Align(
                        alignment: const Alignment(0, -0.67),
                        child: Text(
                          'Welcome to',
                          //textAlign: TextAlign.left,
                          style: TextStyle(
                              shadows: const [
                                Shadow(
                                  color: Color.fromARGB(48, 0, 0,
                                      0), // Choose the color of the shadow
                                  blurRadius:
                                      5.0, // Adjust the blur radius for the shadow effect
                                  offset: Offset(2.0,
                                      2.0), // Set the horizontal and vertical offset for the shadow
                                ),
                              ],
                              color: const Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Prompt',
                              fontSize: 23.sp,
                              fontWeight: FontWeight.w300,
                              height: 3.sp),
                        )),
                    Align(
                        alignment: const Alignment(0, -0.53),
                        child: Text(
                          'Cardify',
                          style: TextStyle(
                              fontSize: 33.sp,
                              shadows: const [
                                Shadow(
                                  color: Color.fromARGB(49, 0, 0,
                                      0), // Choose the color of the shadow
                                  blurRadius:
                                      2.0, // Adjust the blur radius for the shadow effect
                                  offset: Offset(2.0,
                                      2.0), // Set the horizontal and vertical offset for the shadow
                                ),
                              ],
                              color: const Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Prompt',
                              letterSpacing:
                                  1 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.w800,
                              height: 3.sp),
                        )),
                    Align(
                        alignment: Alignment(0.5.sp, 2.6.sp),
                        child: SizedBox(
                            height: 7.h,
                            //width: 50.w,
                            child: Stack(children: <Widget>[
                              ElevatedButton(
                                  style: ButtonStyle(
                                      //backgroundColor: Colors.white,
                                      padding:
                                          MaterialStateProperty.all<EdgeInsets>(
                                              EdgeInsets.all(10.sp)),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                              side: const BorderSide(
                                                  color: Color.fromARGB(
                                                      255, 0, 0, 0))))),
                                  onPressed: () {
                                    context
                                        .read<FireAuth>()
                                        .signup(SingUpModal(
                                            phone: "phone",
                                            email: _email.text,
                                            name: "Test User",
                                            password: _password.text))
                                        .then((val) {
                                      if (value.userdata != null) {
                                        Navigator.pushNamed(context, "/home");
                                      }
                                    });
                                  },
                                  child: Text(
                                      "                  Login                  ",
                                      style: TextStyle(
                                          fontSize: 18.sp,
                                          color:
                                              const Color.fromARGB(255, 255, 255, 255)))),
                            ]))),
                    Container(
                        alignment: Alignment(0.5.sp, 3.1.sp),
                        child: SizedBox(
                            height: 24.sp,
                            width: 60.sp,
                            child: Stack(children: <Widget>[
                              ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor: const MaterialStatePropertyAll(
                                          Color.fromARGB(255, 255, 255, 255)),
                                      padding:
                                          MaterialStateProperty.all<EdgeInsets>(
                                              const EdgeInsets.all(5)),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              side: const BorderSide(
                                                  color: Color.fromARGB(255, 0, 0, 0))))),
                                  onPressed: () {},
                                  child: Row(children: [
                                    Image.asset("assets/google.png"),
                                    const Text("      Login with Google",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color:
                                                Color.fromARGB(255, 0, 0, 0)))
                                  ])),
                            ]))),
                    Align(
                        alignment: Alignment(-2.45.sp, 3.6.sp),
                        child: Text(
                          'Don’t have account?',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Inter',
                              fontSize: 15.sp,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 5.sp),
                        )),
                    Align(
                        alignment: Alignment(2.5.sp, 3.6.sp),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/register');
                          },
                          child: Text(
                            'Register Now',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: const Color.fromARGB(255, 182, 3, 137),
                                fontFamily: 'Inter',
                                fontSize: 15.sp,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 5.sp),
                          ),
                        )),
                    Align(
                        alignment: Alignment(0.5.sp, 0.8.sp),
                        child: SizedBox(
                            width: 235,
                            child: Stack(children: <Widget>[
                              TextFormField(
                                controller: _email,
                                style: const TextStyle(color: Colors.black),
                                decoration: const InputDecoration(
                                    border: UnderlineInputBorder(),
                                    labelText: 'Email',
                                    labelStyle: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Inter')
                                    //focusColor: Color.fromARGB(255, 0, 0, 0),
                                    ),
                              ),
                            ]))),
                    Align(
                        alignment: Alignment(0.5.sp, 1.8.sp),
                        child: SizedBox(
                            width: 235,
                            child: Stack(children: <Widget>[
                              TextFormField(
                                controller: _password,
                                style: const TextStyle(
                                    color: Colors.black, fontFamily: 'Inter'),
                                decoration: const InputDecoration(
                                    focusColor: Colors.black,
                                    border: UnderlineInputBorder(),
                                    labelText: 'Password',
                                    labelStyle: TextStyle(color: Colors.black)),
                              ),
                            ]))),
                    if (value.loading) ...[
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        color: Colors.grey.shade400.withOpacity(0.5),
                        child: const Center(child: CircularProgressIndicator()),
                      )
                    ],
                  ]);
                },
              ))
        ],
      ));
    });
  }
}
