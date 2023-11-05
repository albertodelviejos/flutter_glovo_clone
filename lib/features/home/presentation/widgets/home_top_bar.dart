import 'package:flutter/material.dart';
import 'package:glovo_clone/core/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeTopBar extends StatefulWidget {
  const HomeTopBar({
    super.key,
  });

  @override
  State<HomeTopBar> createState() => _HomeTopBarState();
}

class _HomeTopBarState extends State<HomeTopBar> with TickerProviderStateMixin {
  late Animation<double> _animation;
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    final Tween<double> positionTween = Tween(begin: 0.0, end: 1.0);

    _animation = positionTween.animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    )..addListener(() {
        setState(() {});
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
    return Opacity(
      opacity: _animation.value,
      child: Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: GlovoAppColors.mainSoft,
            ),
            child: const Icon(
              Icons.person_outline_outlined,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
              child: Container(
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              color: GlovoAppColors.mainSoft,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.search, color: Colors.grey),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '¿Qué necesitas?',
                  style: GoogleFonts.poppins(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          )),
          const SizedBox(
            width: 20,
          ),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: GlovoAppColors.mainSoft,
            ),
            child: const Icon(
              Icons.monetization_on_outlined,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}
