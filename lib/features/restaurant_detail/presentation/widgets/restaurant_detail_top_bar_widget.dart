import 'package:flutter/material.dart';

class RestaurantDetailTopBar extends StatelessWidget {
  const RestaurantDetailTopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              color: Colors.black.withOpacity(0.5),
            ),
            child: const Center(
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.white,
              ),
            ),
          ),
        ),
        const Spacer(),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
            color: Colors.white,
          ),
          child: const Center(
            child: Icon(
              Icons.translate,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
            color: Colors.white,
          ),
          child: const Center(
            child: Icon(
              Icons.ios_share_rounded,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
