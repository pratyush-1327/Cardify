import 'package:cardify/authscreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://raw.githubusercontent.com/pratyush-1327/counter_new/fdaf4220883be86d74d4109739a2a72e0c119052/login%20page.png"),
                  fit: BoxFit.fill),
            ),
            child: Stack(children: <Widget>[
              const Align(
                  alignment: Alignment(-0.9, -0.67),
                  child: Text(
                    'Welcome to',
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
                        fontFamily: 'Prompt',
                        fontSize: 28,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.w600,
                        height: 1),
                  )),
              const Align(
                  alignment: Alignment(-0.3, -0.59),
                  child: Text(
                    'Cardify',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        shadows: [
                          Shadow(
                            color: Color.fromARGB(
                                49, 0, 0, 0), // Choose the color of the shadow
                            blurRadius:
                                2.0, // Adjust the blur radius for the shadow effect
                            offset: Offset(2.0,
                                2.0), // Set the horizontal and vertical offset for the shadow
                          ),
                        ],
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Prompt',
                        fontSize: 60,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.w900,
                        height: 1),
                  )),
              Align(
                  alignment: const Alignment(0.0, 0.3),
                  child: SizedBox(
                      height: 35,
                      child: Stack(children: <Widget>[
                        ElevatedButton(
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                    const EdgeInsets.all(5)),
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
                                "                  login                  "
                                    .toUpperCase(),
                                style: const TextStyle(fontSize: 14))),
                      ]))),
              Align(
                  alignment: const Alignment(-0.0, 0.7),
                  child: SizedBox(
                      height: 35,
                      child: Stack(children: <Widget>[
                        TextButton(
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                    const EdgeInsets.all(5)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        side: const BorderSide(
                                            color: Color.fromARGB(
                                                255, 0, 0, 0))))),
                            onPressed: () {},
                            child: const Text(
                                "        Login with Google         ",
                                style: TextStyle(fontSize: 14))),
                      ]))),
              const Align(
                  alignment: Alignment(0.0, 0.75),
                  child: Text(
                    'Don’t have account? Register Now',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontFamily: 'Inter',
                        fontSize: 13,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  )),
              Align(
                  alignment: const Alignment(0.0, 0.08),
                  child: SizedBox(
                      width: 235,
                      height: 35,
                      child: Stack(children: <Widget>[
                        TextFormField(
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Email',
                          ),
                        ),
                        const Positioned(
                            top: 23,
                            left: 0,
                            child: Divider(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                thickness: 1)),
                      ]))),
              Align(
                  alignment: const Alignment(0.0, 0.18),
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
  }
}