import 'package:flutter/material.dart';
import 'package:glovo_clone/core/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toggle_switch/toggle_switch.dart';

class RestaurantListScreenTopBar extends StatelessWidget {
  const RestaurantListScreenTopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          'Coca-Cola Combos',
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Spacer(),
        ToggleSwitch(
          fontSize: 16.0,
          initialLabelIndex: 1,
          activeBgColor: [GlovoAppColors.main],
          inactiveBgColor: Colors.grey.shade200,
          inactiveFgColor: GlovoAppColors.main,
          totalSwitches: 2,
          customIcons: const [
            Icon(Icons.motorcycle),
            Icon(Icons.directions_walk_outlined)
          ],
          minWidth: 44,
          animate: true,
          cornerRadius: 20.0,
          radiusStyle: true,
          curve: Curves.linear,
          animationDuration: 300,
        ),
      ],
    );
  }
}
