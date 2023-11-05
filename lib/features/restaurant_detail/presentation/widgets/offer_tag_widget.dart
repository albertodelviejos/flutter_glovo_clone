import 'package:flutter/material.dart';
import 'package:glovo_clone/core/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class OfferTagWidget extends StatelessWidget {
  const OfferTagWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: GlovoAppColors.main,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(width: 4),
          const Icon(
            Icons.local_offer_outlined,
            size: 12,
          ),
          const SizedBox(width: 4),
          Text(
            '-20% algunos productos',
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          const SizedBox(width: 4),
        ],
      ),
    );
  }
}
