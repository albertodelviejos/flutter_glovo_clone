import 'package:flutter/material.dart';

class WhiteContainer extends StatefulWidget {
  const WhiteContainer({
    super.key,
  });

  @override
  State<WhiteContainer> createState() => _WhiteContainerState();
}

class _WhiteContainerState extends State<WhiteContainer>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 2), // The duration can be adjusted
      vsync: this,
    );

    final Tween<double> positionTween = Tween(begin: 2.5, end: 1.0);

    _animation = positionTween.animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    )..addListener(() {
        setState(() {}); // Calls build method of the widget
      });

    _controller.forward();

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return OverflowBox(
      alignment: Alignment.bottomCenter,
      maxWidth: MediaQuery.of(context).size.width * 2,
      maxHeight: MediaQuery.of(context).size.height * 0.9,
      child: Padding(
        padding: EdgeInsets.only(top: _animation.value * 250.0),
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(400.0),
              topRight: Radius.circular(400.0),
            ),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
