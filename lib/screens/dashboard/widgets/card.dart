
import 'package:cardify/constants/Assets.dart';
import 'package:flutter/material.dart';

class CardComponent extends StatelessWidget {
  // final double width;
  final Color color;
  final String? bgImage;
  final double cardRadio = 0.628;
  const CardComponent({super.key, required this.color, this.bgImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      // width: width,
      // height: cardRadio * width,
      decoration: BoxDecoration(
        color: color,
        image: bgImage != null
            ? DecorationImage(
                image: AssetImage(bgImage!),
                fit: BoxFit.cover,
              )
            : null,
        borderRadius: BorderRadius.circular(20),
        // gradient: LinearGradient(
        //   colors: [
        //     color,
        //     color,
        //     Colors.white,
        //   ],
        //   begin: Alignment.topRight,
        //   end: Alignment.bottomLeft,
        // ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            spreadRadius: 0,
            blurRadius: 10,
            offset: const Offset(6, 8),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
              alignment: Alignment.centerLeft, child: Image.asset(Assets.chip)),
          const Text("0000 0000 0000 0000",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
                fontStyle: FontStyle.italic,
              )),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                  ),
                  Text(
                    "MM/YY",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                  ),
                ],
              ),
              Text(
                "***",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 8),
              )
            ],
          ),
        ],
      ),
    );
  }
}
