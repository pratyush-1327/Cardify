import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BankOps extends StatelessWidget {
  const BankOps({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    return ResponsiveSizer(builder: (context, orientation, ScreenType) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
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
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/bg2.png"), fit: BoxFit.fill),
          ),
          child: ListView.builder(
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 10, 5),
                    child: Stack(children: <Widget>[
                      Container(
                          width: Device.width / 1.1,
                          height: 115,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            gradient: LinearGradient(
                                begin: Alignment(6.123234262925839e-17, 1),
                                end: Alignment(-1, 6.123234262925839e-17),
                                colors: [
                                  Color.fromRGBO(127, 132, 225, 0.342),
                                  Color.fromRGBO(98, 128, 188, 0.413)
                                ]),
                          )),
                      Positioned(
                          top: 5,
                          left: 10,
                          child: Container(
                              width: 104,
                              height: 104,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(52),
                                  topRight: Radius.circular(52),
                                  bottomLeft: Radius.circular(52),
                                  bottomRight: Radius.circular(52),
                                ),
                                //color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                              child: Image.asset(
                                'assets/blogo.png',
                              ))),
                      const Positioned(
                          top: 34,
                          left: 127,
                          child: Text(
                            'HDFC Bank',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontFamily: 'Roboto',
                                fontSize: 22,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1),
                          )),
                      Positioned(
                        top: 65,
                        left: 120,
                        child: Container(
                          height: 24,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(26.0),
                            gradient: const LinearGradient(
                              begin: Alignment(-0.95, 0.0),
                              end: Alignment(1.0, 0.0),
                              colors: [
                                Color(0xff667eea),
                                Color.fromARGB(159, 100, 183, 255)
                              ],
                              stops: [0.0, 1.0],
                            ),
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              disabledForegroundColor:
                                  Colors.transparent.withOpacity(0.38),
                              disabledBackgroundColor:
                                  Colors.transparent.withOpacity(0.12),
                              shadowColor: Colors.transparent,
                            ),
                            onPressed: () {},
                            child: const Center(
                              child: Text(
                                'Link',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 12,
                                  color: Color(0xffffffff),
                                  //letterSpacing: -0.3858822937011719,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      )
                    ]));
              }),
        ),
        bottomNavigationBar: Transform.translate(
          offset: Offset(0, -20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              padding: EdgeInsets.all(20),
            ),
            onPressed: () {},
            child: Icon(Icons.close),
          ),
        ),
        extendBodyBehindAppBar: true,
        extendBody: true,
      );
    });
  }
}
