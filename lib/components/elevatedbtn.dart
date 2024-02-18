import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBottomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const CustomBottomButton({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 53,
      width: 242,
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment(1.00, -0.05),
          end: Alignment(-1, 0.05),
          colors: [Color(0xFF4564FF), Color(0x6BFF3FA2)],
        ),
        borderRadius: BorderRadius.circular(40),
        boxShadow: const [
          BoxShadow(
            color: Color(0x66000000),
            blurRadius: 10,
            offset: Offset(1, 5),
            spreadRadius: 0,
          ),
        ],
      ),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(35),
        splashColor: Colors.white,
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
        ),
      ),
    );
  }
}
