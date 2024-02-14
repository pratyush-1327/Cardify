import 'package:cardify/constants/Assets.dart';
import 'package:cardify/constants/Pallete.dart';
import 'package:flutter/material.dart';

class CardifyAppBar extends StatelessWidget {
  const CardifyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 70.0,
      leading: Container(
        padding: const EdgeInsets.all(4.0),
        child: const CircleAvatar(
          backgroundColor: Pallete.blue,
          radius: 50,
          child: Text("A"),
        ),
      ),
      title: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome Back",
            style: TextStyle(fontSize: 12, color: Colors.black),
          ),
          Text(
            "Lorem Ipsum",
            style: TextStyle(fontSize: 14, color: Pallete.blue),
          )
        ],
      ),
      automaticallyImplyLeading: false,
      actions: [
        InkWell(
          onTap: () {},
          child: Container(
            width: 35,
            height: 35,
            decoration: const BoxDecoration(
              color: Pallete.blue,
              shape: BoxShape.circle,
            ),
            child: Image.asset(Assets.feedback),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        InkWell(
          onTap: () {},
          child: Container(
            width: 35,
            height: 35,
            decoration: const BoxDecoration(
              color: Pallete.blue,
              shape: BoxShape.circle,
            ),
            child: Image.asset(Assets.notification),
          ),
        ),
      ],
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }
}
