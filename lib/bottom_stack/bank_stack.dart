import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BankStack extends StatelessWidget {
  final VoidCallback onTap;

  const BankStack({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white70,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(30), 
        ),
        child: Text(
          "Create your own plan",
          style: GoogleFonts.poppins(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            color: Colors.white70,
          ),
        ),
      ),
    );
  }
}
