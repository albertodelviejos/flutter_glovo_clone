import 'package:flutter/material.dart';
import 'package:glovo_clone/features/home/presentation/pages/home_screen.dart';
import 'package:glovo_clone/features/home/presentation/widgets/iris_out_transition.dart';
import 'package:glovo_clone/features/restaurant_detail/presentation/pages/restaurant_detail_screen.dart';
import 'package:glovo_clone/features/restaurant_list/presentation/pages/restaurant_list_screen.dart';

navigateToHome(BuildContext context) => Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const HomeScreen()),
    );

navigateToRestaurantList(BuildContext context) => Navigator.push(
      context,
      LooneyTunesTransition(
          center: Offset(
            (MediaQuery.of(context).size.height / 2) - 30,
            (MediaQuery.of(context).size.height / 2) - 65,
          ),
          page: const RestaurantListScreen()),
    );

navigateToRestaurantDetail(BuildContext context) => Navigator.push(context,
    MaterialPageRoute(builder: (context) => const RestaurantDetailScreen()));
