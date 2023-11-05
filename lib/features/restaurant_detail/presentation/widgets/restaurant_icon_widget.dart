import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RestaurantIconWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color backgroundColor;
  const RestaurantIconWidget({
    super.key,
    required this.icon,
    required this.text,
    this.backgroundColor = const Color.fromARGB(255, 255, 245, 203),
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
            color: backgroundColor,
          ),
          child: Icon(
            icon,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
