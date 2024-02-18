import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String text;
  final Color bgColor;
  final String imageUrl;
  final Function? fun;
  const ActionButton(
      {super.key,
      this.fun,
      required this.text,
      required this.bgColor,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(20),
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
                  color: Colors.white,
                  child: Image.asset(imageUrl, color: Colors.black)),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text(
                text,
                style: const TextStyle(color: Colors.black, fontSize: 16),
              ),
            )
          ],
        ),
      ),
      onTap: () {
        if (fun != null) {
          fun!.call();
        }
      },
    );
  }
}
