import 'package:flutter/material.dart';

class TransactionHistory extends StatelessWidget {
  final Color avatarBg;
  const TransactionHistory({super.key, required this.avatarBg});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              spreadRadius: 0,
              blurRadius: 10,
              offset: const Offset(6, 8),
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundColor: avatarBg,
            radius: 25,
          ),
          const SizedBox(
            width: 10,
          ),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Name",
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
                Text(
                  "Date",
                  style: TextStyle(color: Colors.black, fontSize: 14),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const Text(
            "\$00.00",
            style: TextStyle(color: Colors.black, fontSize: 14),
          )
        ],
      ),
    );
  }
}
