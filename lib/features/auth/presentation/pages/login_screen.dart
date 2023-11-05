import 'package:flutter/material.dart';
import 'package:glovo_clone/core/colors.dart';
import 'package:glovo_clone/features/auth/presentation/widgets/cta_widget.dart';
import 'package:glovo_clone/features/auth/presentation/widgets/glovo_logo_widget.dart';
import 'package:glovo_clone/features/auth/presentation/widgets/white_container_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late AnimationController _secondController;
  late Animation<double> _animation;
  late Animation<double> _secondAnimation;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _secondController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    final Tween<double> positionTween = Tween(begin: 0.0, end: 1.0);
    final Tween<double> position2Tween = Tween(begin: 2.0, end: 0.6);

    _animation = positionTween.animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    )..addListener(() {
        setState(() {}); // Calls build method of the widget
      });

    _secondAnimation = position2Tween.animate(
      CurvedAnimation(parent: _secondController, curve: Curves.easeInOut),
    )..addListener(() {
        setState(() {}); // Calls build method of the widget
      });

    // Start the animation
    _chainAnimation();

    super.initState();
  }

  _chainAnimation() {
    _controller.forward().then((value) => _secondController.forward());
  }

  @override
  void dispose() {
    _controller.dispose();
    _secondController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlovoAppColors.main,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          const WhiteContainer(),
          Positioned(
            bottom: (_animation.value) * 350.0 + 300,
            child: const GlovoLogo(),
          ),
          Positioned(
              top: (_secondAnimation.value) *
                      MediaQuery.of(context).size.height -
                  150,
              child: const CtaWidget()),
        ],
      ),
    );
  }
}
