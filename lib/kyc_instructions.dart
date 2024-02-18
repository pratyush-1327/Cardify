import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class KycIns extends StatelessWidget {
  const KycIns({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    return ResponsiveSizer(builder: (context, orientation, ScreenType) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            'e-KYC',
            textAlign: TextAlign.left,
            style: TextStyle(
                shadows: [
                  Shadow(
                    color: Color.fromARGB(
                        48, 0, 0, 0), // Choose the color of the shadow
                    blurRadius:
                        5.0, // Adjust the blur radius for the shadow effect
                    offset: Offset(2.0,
                        2.0), // Set the horizontal and vertical offset for the shadow
                  ),
                ],
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Roboto',
                fontSize: 35,
                letterSpacing:
                    0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.normal,
                height: 1),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Container(
            width: Device.width,
            height: Device.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/bg_3.png"), fit: BoxFit.fill),
            ),
            child: const Padding(
                padding: EdgeInsets.fromLTRB(20, 200, 10, 5),
                child: Stack(children: <Widget>[
                  Text(
                    'Steps for e-KYC -',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        shadows: [
                          Shadow(
                            color: Color.fromARGB(
                                48, 0, 0, 0), // Choose the color of the shadow
                            blurRadius:
                                5.0, // Adjust the blur radius for the shadow effect
                            offset: Offset(2.0,
                                2.0), // Set the horizontal and vertical offset for the shadow
                          ),
                        ],
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Roboto',
                        fontSize: 35,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.w300,
                        height: 1),
                  ),
                  Align(
                    alignment: Alignment(-1, -0.75),
                    child: Text(
                      '1. Enter details',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Roboto',
                        fontSize: 24,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(-1, -0.6),
                    child: Text(
                      '2. Scan Biometrics for verification',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Roboto',
                        fontSize: 24,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(-1, -0.35),
                    child: Text(
                      '3. Upload any one of the valid Documents such as Aadhar Card, PAN Card, Driving License, Ration Card, Passport.',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Roboto',
                        fontSize: 24,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(-1, 0),
                    child: Text(
                      '4. Video Call with one of our agents',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Roboto',
                        fontSize: 24,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(-1, 0.15),
                    child: Text(
                      '5. Check CIBIL Score for eligibility',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Roboto',
                        fontSize: 24,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ]))),
        bottomNavigationBar: Transform.translate(
            offset: const Offset(0, -20),
            child: Container(
              padding: const EdgeInsets.fromLTRB(100, 20, 100, 5),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(20),
                ),
                onPressed: () {},
                child: const Text('Start e-KYC'),
              ),
            )),
        extendBodyBehindAppBar: true,
        extendBody: true,
      );
    });
  }
}
