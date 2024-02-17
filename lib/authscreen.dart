import 'package:cardify/components/elevatedbtn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  late final LocalAuthentication auth;

  @override
  void initState() {
    super.initState();
    auth = LocalAuthentication();
  }

  Future<void> _authenticate() async {
    try {
      bool authenticated = await auth.authenticate(
          localizedReason: 'Authenticate to access the app',
          options: const AuthenticationOptions(
            stickyAuth: true,
            biometricOnly: true,
          ));

      // ignore: avoid_print
      print("Authenticated : $authenticated");
    } on PlatformException catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [Column(
          children: [
            Container(
              width: 390,
              height: 700,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bg2.png'), 
              fit: BoxFit.cover,
            ),
          ),
              child: Stack(
                children: [
                  Positioned(
                    left: 89,
                    top: 120,
                    child: SizedBox(
                      width: 200,
                      height: 200,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 200,
                              height: 200,
                              decoration: const ShapeDecoration(
                                color: Color(0xFF259ACD),
                                shape: OvalBorder(),
                              ),
                              child: ClipOval(
                                child: Image.asset(
                                  'assets/face_2.png',
                                  width: 200,
                                  height: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 55,
                    top: 365,
                    child: Text(
                      'Biometric Authentication',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w300,
                        height: 0,
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 62,
                    top: 422,
                    child: SizedBox(
                      width: 270,
                      child: Text(
                        'Your identity will be verified by using either fingerprint or face verification',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 50,
                    top: 600,
                    child: CustomBottomButton(
                      onPressed: _authenticate,
                      text: 'Verify My ID',
                    ),
                  ),
                  Positioned(
                    left: 332,
                    top: 42,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: const ShapeDecoration(
                        color: Color(0x994564FF),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 333,
                    top: 57.14,
                    child: Transform(
                      transform: Matrix4.identity()
                        ..translate(0.0, 0.0)
                        ..rotateZ(-0.79),
                      child: Container(
                        width: 20,
                        height: 20,
                        padding: const EdgeInsets.all(2.50),
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/Vector.png'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
