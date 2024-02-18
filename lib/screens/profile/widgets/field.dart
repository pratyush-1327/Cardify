import 'package:cardify/constants/Pallete.dart';
import 'package:flutter/material.dart';

class Field extends StatelessWidget {
  final String keyName;
  final String? value;
  final String imageUrl;
  const Field(
      {super.key, required this.keyName, this.value, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          ClipOval(
            child: Container(
                width: 35,
                height: 35,
                padding: const EdgeInsets.all(10),
                color: Pallete.blue,
                child: Image.asset(imageUrl, color: Colors.white)),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  keyName,
                  style: const TextStyle(color: Colors.black, fontSize: 14),
                ),
                if (value != null)
                  Text(
                    value!,
                    style: const TextStyle(color: Pallete.pink, fontSize: 12),
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}
