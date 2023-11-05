import 'package:flutter/material.dart';
import 'package:glovo_clone/core/navigation.dart';
import 'package:glovo_clone/features/home/presentation/widgets/home_item_widget.dart';
import 'package:glovo_clone/features/home/presentation/widgets/secondary_item_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class CenterHomeWidget extends StatefulWidget {
  const CenterHomeWidget({
    super.key,
  });

  @override
  State<CenterHomeWidget> createState() => _CenterHomeWidgetState();
}

class _CenterHomeWidgetState extends State<CenterHomeWidget>
    with TickerProviderStateMixin {
  late List<Animation<double>> animations;
  late List<AnimationController> controllers;

  @override
  initState() {
    final Tween<double> positionTween = Tween(begin: 0.0, end: 1.0);
    controllers = List.generate(
      7,
      (index) => AnimationController(
        duration: const Duration(milliseconds: 200),
        vsync: this,
      ),
    );
    animations = List.generate(
      7,
      (index) => positionTween.animate(
        CurvedAnimation(
          parent: controllers[index],
          curve: Curves.elasticOut,
        )..addListener(
            () {
              setState(() {}); // Calls build method of the widget
            },
          ),
      ),
    );
    _circleAnimationChain();

    super.initState();
  }

  @override
  dispose() {
    for (var element in controllers) {
      element.dispose();
    }

    super.dispose();
  }

  _circleAnimationChain() {
    controllers[0].forward().then(
          (_) => controllers[1].forward().then(
                (_) => controllers[2].forward().then(
                      (_) => controllers[3].forward().then(
                            (_) => controllers[4].forward().then(
                                  (_) => controllers[5].forward().then(
                                        (_) => controllers[6].forward(),
                                      ),
                                ),
                          ),
                    ),
              ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.5,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
            top: 65,
            right: 30,
            child: SecondaryItemWidget(
              title: 'Drinks &\nTobacco',
              image: 'assets/drinks.png',
              animation: animations[4],
              onTap: () => navigateToRestaurantList(context),
            ),
          ),
          Positioned(
            top: 65,
            left: 30,
            child: SecondaryItemWidget(
              title: 'Supermarket',
              image: 'assets/supermarket.png',
              animation: animations[2],
              onTap: () => navigateToRestaurantList(context),
            ),
          ),
          Positioned(
            top: 190,
            left: 15,
            child: SecondaryItemWidget(
              title: 'Shops',
              image: 'assets/gift.png',
              animation: animations[1],
              onTap: () => navigateToRestaurantList(context),
            ),
          ),
          Positioned(
            top: 190,
            right: 15,
            child: SecondaryItemWidget(
              title: 'glo',
              image: 'assets/glo.png',
              animation: animations[5],
              onTap: () => navigateToRestaurantList(context),
            ),
          ),
          Positioned(
            top: 300,
            right: 85,
            child: SecondaryItemWidget(
              title: 'Coca-Cola\nCombos',
              image: 'assets/combo.png',
              animation: animations[6],
              onTap: () => navigateToRestaurantList(context),
            ),
          ),
          Positioned(
            top: 300,
            left: 85,
            child: SecondaryItemWidget(
              title: 'Pedidos\npersonalizados',
              image: 'assets/personalized.png',
              animation: animations[0],
              onTap: () => navigateToRestaurantList(context),
            ),
          ),
          Positioned(
            top: 20,
            left: (MediaQuery.of(context).size.width * 0.5) - 50,
            child: SecondaryItemWidget(
              title: 'Glovo Express',
              image: 'assets/personalized.png',
              animation: animations[3],
              onTap: () => navigateToRestaurantList(context),
            ),
          ),
          Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomPaint(
                  size: Size(
                      140,
                      (140 * 1)
                          .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                  painter: RPSCustomPainter(),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/food.png',
                      width: 50.0,
                      height: 50.0,
                      scale: 0.4,
                    ),
                    Text(
                      'Comida',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
