import 'package:flutter/material.dart';

class LooneyTunesTransition extends PageRouteBuilder {
  final Widget page;
  final Offset center;

  LooneyTunesTransition({this.center = const Offset(0, 0), required this.page})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: IrisTransition(
                animation: animation,
                center: center,
                child: child,
              ),
            );
          },
        );
}

class IrisTransition extends StatelessWidget {
  final Widget child;
  final Animation<double> animation;
  final Offset center;

  const IrisTransition({
    super.key,
    required this.child,
    required this.animation,
    required this.center,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        double size =
            (MediaQuery.of(context).size.height * 1.5) * -animation.value;

        return ClipOval(
          clipper: CustomOvalClipper(size, center: center),
          child: this.child,
        );
      },
      child: child,
    );
  }
}

class CustomOvalClipper extends CustomClipper<Rect> {
  final double value;
  final Offset? center;

  CustomOvalClipper(this.value, {this.center});

  @override
  Rect getClip(Size size) {
    return Rect.fromCircle(
      center: center ?? Offset(size.width / 2, size.height / 2),
      radius: value / 2,
    );
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) => true;
}
