import 'package:cardify/constants/Assets.dart';
import 'package:cardify/constants/Pallete.dart';
import 'package:cardify/screens/profile/widgets/field.dart';
import 'package:flutter/material.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            "User Details",
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
            child: const Column(
              children: [
                Field(
                  keyName: "Name",
                  value: "Lorem Ipsum",
                  imageUrl: Assets.editProfile,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Field(
                      keyName: "Phone",
                      value: "0000000000",
                      imageUrl: Assets.phone,
                    )),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Field(
                      keyName: "Email",
                      value: "abc@gmail.com",
                      imageUrl: Assets.mail,
                    )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Field(
                        keyName: "Change Password",
                        imageUrl: Assets.lock,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Field(
                      keyName: "More",
                      imageUrl: Assets.more,
                    )),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
