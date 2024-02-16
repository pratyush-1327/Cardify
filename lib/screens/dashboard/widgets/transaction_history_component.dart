import 'package:flutter/material.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 25,
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
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
          SizedBox(
            width: 10,
          ),
          Text(
            "\$00.00",
            style: TextStyle(color: Colors.black, fontSize: 14),
          )
        ],
      ),
    );
  }
}
