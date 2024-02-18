import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NewCard extends StatelessWidget {
  const NewCard({super.key});

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
              child: Stack(children: <Widget>[
                Align(
                    alignment: Alignment(0.sp, -2.sp),
                    child: Stack(children: <Widget>[
                      Container(
                          width: 390,
                          height: 231,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/card_bg.png"),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            color: Color.fromRGBO(0, 179, 255, 1),
                          )),
                      Positioned(
                          top: 70,
                          left: 150,
                          width: 40,
                          height: 40,
                          child: Stack(children: <Widget>[
                            Center(
                                child: Image.asset(
                              'assets/Vector_2.png',
                            )),
                          ])),
                      const Positioned(
                          top: 119,
                          left: 129,
                          child: Text(
                            'Add Card',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'Roboto',
                                fontSize: 20,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1),
                          )),
                    ])),
                Align(
                    alignment: const Alignment(0.9, -0.9),
                    child: Stack(children: <Widget>[
                      Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(37, 154, 205, 1),
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(50, 50)),
                          ),
                          child: const Center(
                              child: Text(
                            'A',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'Roboto',
                                fontSize: 32,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1),
                          )))
                    ])),
                Align(
                    alignment: const Alignment(-0.9, -0.87),
                    child: Text(
                      'Your Cards',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: const Color.fromRGBO(0, 0, 0, 1),
                          fontFamily: 'Roboto',
                          fontSize: 22.sp,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1),
                    )),
                Align(
                    alignment: const Alignment(0, 1),
                    child: Stack(children: <Widget>[
                      Container(
                          width: Device.width,
                          height: Device.height / 15,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                              bottomLeft: Radius.circular(0),
                              bottomRight: Radius.circular(0),
                            ),
                            color: Color.fromRGBO(37, 154, 205, 1),
                          )),
                      Positioned(
                          top: 12,
                          left: 17,
                          child: Image.asset(
                            'assets/Vector_3.png',
                          )),
                      Positioned(
                          top: 12,
                          right: 17,
                          child: Image.asset(
                            'assets/Vector_4.png',
                          )),
                    ]))
              ]))
        ],
      ));
    });
  }
}
