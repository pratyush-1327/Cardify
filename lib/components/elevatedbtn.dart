import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const CustomElevatedButton({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
          // Provide a default color if null is returned
          return const Color(0xFF4564FF);
        }),
        overlayColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
          // Provide a default overlay color if null is returned
          return Colors.white.withOpacity(0.2);
        }),
        elevation: MaterialStateProperty.all<double>(10),
        shadowColor: MaterialStateProperty.all<Color>(const Color(0x66000000)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
            side: BorderSide(
              width: 1,
              color: Colors.white.withOpacity(0.4),
            ),
          ),
        ),
      ),
      child: Container(
        width: 242,
        height: 53,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment(1.00, -0.05),
            end: Alignment(-1, 0.05),
            colors: [Color(0xFF4564FF), Color(0x00FF3FA2)],
          ),
          borderRadius: BorderRadius.circular(40),
          border: Border.all(
            width: 1,
            color: Colors.white.withOpacity(0.4),
          ),
          boxShadow: const [
            BoxShadow(
              color: Color(0x66000000),
              blurRadius: 10,
              offset: Offset(1, 5),
              spreadRadius: 0,
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
