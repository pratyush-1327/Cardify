import 'package:flutter/material.dart';

class CardComponent extends StatelessWidget {
  // final double width;
  final Color color;
  final double cardRadio = 0.628;
  const CardComponent({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      // width: width,
      // height: cardRadio * width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            spreadRadius: 0,
            blurRadius: 10,
            offset: const Offset(6, 8),
          ),
        ],
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Name",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text(
                "0000-0000...",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ],
          ),
          Text(
            "00/00/0000",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          )
        ],
      ),
    );
  }
}
