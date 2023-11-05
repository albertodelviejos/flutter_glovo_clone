import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class GlovoLogo extends StatelessWidget {
  const GlovoLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SvgPicture.asset(
        'assets/glovo.svg',
        width: 200.0,
      ),
    );
  }
}
