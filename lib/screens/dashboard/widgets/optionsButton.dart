import 'package:cardify/constants/Pallete.dart';
import 'package:flutter/material.dart';

class OptionButton extends StatelessWidget {
  final String icon;
  final String text;
  const OptionButton({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                spreadRadius: 0,
                blurRadius: 10,
                offset: const Offset(6, 8),
              ),
            ],
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              color: Pallete.blue,
              width: 30,
              height: 30,
            ),
            Text(
              text,
              style: const TextStyle(color: Colors.black, fontSize: 10),
            )
          ],
        ),
      ),
    );
  }
}
