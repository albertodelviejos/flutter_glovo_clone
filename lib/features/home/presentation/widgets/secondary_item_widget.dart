import 'package:flutter/material.dart';
import 'package:glovo_clone/features/home/presentation/widgets/home_item_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondaryItemWidget extends StatelessWidget {
  final String title;
  final String image;
  final Animation animation;
  final Function() onTap;
  const SecondaryItemWidget({
    super.key,
    required this.title,
    required this.image,
    required this.animation,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomPaint(
              size: Size(
                  115.0 * animation.value,
                  (115.0 * animation.value)
                      .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
              painter: RPSCustomPainter(),
            ),
            Visibility(
              visible: animation.value >= 0.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    image,
                    width: 50.0,
                    height: 50.0,
                    scale: 0.4,
                  ),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
