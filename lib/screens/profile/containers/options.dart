import 'package:cardify/constants/Assets.dart';
import 'package:cardify/constants/Pallete.dart';
import 'package:cardify/screens/profile/widgets/field.dart';
import 'package:flutter/material.dart';

class Options extends StatefulWidget {
  const Options({super.key});

  @override
  State<Options> createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            "Options",
            style: TextStyle(color: Colors.black, fontSize: 14),
            textAlign: TextAlign.right,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Pallete.blue.withOpacity(0.68),
                  Pallete.blue.withOpacity(0.68),
                  Colors.white,
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  spreadRadius: 0,
                  blurRadius: 10,
                  offset: const Offset(6, 8),
                ),
              ],
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Text(
                          "Two factor authentication",
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                      ),
                      Switch(
                        value: isSwitched,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = value;
                          });
                        },
                        activeTrackColor: Pallete.pink.withOpacity(0.68),
                        activeColor: Colors.white,
                        inactiveThumbColor: Colors.white,
                        inactiveTrackColor: Colors.grey.shade400,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Field(keyName: "Cibil score", imageUrl: Assets.score),
                const SizedBox(
                  height: 10,
                ),
                const Field(keyName: "Change password", imageUrl: Assets.lock),
              ],
            ),
          )
        ],
      ),
    );
  }
}
