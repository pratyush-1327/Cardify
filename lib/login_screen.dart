import 'package:cardify/authscreen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, ScreenType) {
      return Material(
          child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://raw.githubusercontent.com/pratyush-1327/counter_new/fdaf4220883be86d74d4109739a2a72e0c119052/login%20page.png"),
                    fit: BoxFit.fill),
              ),
              child: Stack(children: <Widget>[
                Align(
                    alignment: const Alignment(-0.7, -0.67),
                    child: Text(
                      'Welcome to',
                      //textAlign: TextAlign.left,
                      style: TextStyle(
                          shadows: [
                            Shadow(
                              color: Color.fromARGB(48, 0, 0,
                                  0), // Choose the color of the shadow
                              blurRadius:
                                  5.0, // Adjust the blur radius for the shadow effect
                              offset: Offset(2.0,
                                  2.0), // Set the horizontal and vertical offset for the shadow
                            ),
                          ],
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontFamily: 'Prompt',
                          fontSize: 23.sp,
                          fontWeight: FontWeight.w500,
                          height: 3.sp),
                    )),
                Align(
                    alignment: const Alignment(-0.2, -0.53),
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
                                  padding: MaterialStateProperty.all<EdgeInsets>(
                                      EdgeInsets.all(10.sp)),
                                  shape:
                                      MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                              side: const BorderSide(
                                                  color: Color.fromARGB(
                                                      255, 0, 0, 0))))),
                              onPressed: () {
                                Navigator.pushNamed(context, '/auth');
                              },
                              child: Text(
                                  "                  Login                  ",
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      color:
                                          const Color.fromARGB(255, 0, 0, 0)))),
                        ]))),
                Container(
                    alignment: Alignment(0.5.sp, 3.6.sp),
                    child: SizedBox(
                        height: 30.sp,
                        child: Stack(children: <Widget>[
                          TextButton(
                              style: ButtonStyle(
                                  padding: MaterialStateProperty.all<EdgeInsets>(
                                      const EdgeInsets.all(10)),
                                  shape:
                                      MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              side: const BorderSide(
                                                  color: Color.fromARGB(
                                                      255, 0, 0, 0))))),
                              onPressed: () {},
                              child: const Text(
                                  "         Login with Google         ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 0, 0, 0)))),
                        ]))),
                Align(
                    alignment: Alignment(0.5.sp, 3.9.sp),
                    child: Text(
                      'Don’t have account?  Register Now',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Inter',
                          fontSize: 16.5.sp,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 5.sp),
                    )),
                Align(
                    alignment: Alignment(0.5.sp, 0.8.sp),
                    child: SizedBox(
                        width: 235,
                        height: 35,
                        child: Stack(children: <Widget>[
                          TextFormField(
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Email',
                              //focusColor: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          Positioned(
                              top: 23.sp,
                              left: 0.sp,
                              child: Divider(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  thickness: 1)),
                        ]))),
                Align(
                    alignment: Alignment(0.5.sp, 1.8.sp),
                    child: SizedBox(
                        width: 235,
                        height: 37,
                        child: Stack(children: <Widget>[
                          TextFormField(
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Password',
                            ),
                          ),
                          const Positioned(
                              top: 27,
                              left: 0,
                              child: Divider(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  thickness: 1)),
                        ]))),
              ])));
    });
  }
}
