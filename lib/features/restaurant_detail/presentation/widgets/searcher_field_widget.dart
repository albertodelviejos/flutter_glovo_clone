import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearcherFieldWidget extends StatelessWidget {
  final String text;
  const SearcherFieldWidget({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60),
        color: Colors.grey[200],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.search, color: Colors.grey),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: GoogleFonts.poppins(
              color: Colors.grey,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
