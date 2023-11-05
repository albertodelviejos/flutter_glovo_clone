import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

enum GlovoButtonType { google, facebook, email }

class GlovoButton extends StatelessWidget {
  const GlovoButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.color,
    this.textColor,
    this.type = GlovoButtonType.email,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String text;
  final Color? color;
  final Color? textColor;
  final GlovoButtonType type;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: 45,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: color ?? Colors.white,
            border: Border.all(color: Colors.grey)),
        child: Stack(
          children: [
            Center(
              child: Text(
                text,
                style: TextStyle(
                  color: textColor ?? Colors.black,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            if (type == GlovoButtonType.email)
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Image.asset(
                    _getIcon(type),
                    width: 30.0,
                    height: 30.0,
                  ),
                ),
              ),
            if (type == GlovoButtonType.google ||
                type == GlovoButtonType.facebook)
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: SvgPicture.asset(
                    _getIcon(type),
                    width: 30.0,
                    height: 30.0,
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }

  String _getIcon(GlovoButtonType type) {
    switch (type) {
      case GlovoButtonType.google:
        return 'assets/google.svg';
      case GlovoButtonType.facebook:
        return 'assets/facebook.svg';
      case GlovoButtonType.email:
        return 'assets/email.png';
    }
  }
}
