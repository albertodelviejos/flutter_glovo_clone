import 'package:flutter/material.dart';
import 'package:glovo_clone/core/colors.dart';
import 'package:glovo_clone/features/home/presentation/widgets/address_home_widget.dart';
import 'package:glovo_clone/features/home/presentation/widgets/center_home_widget.dart';
import 'package:glovo_clone/features/home/presentation/widgets/footer_home_widget.dart';
import 'package:glovo_clone/features/home/presentation/widgets/home_top_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlovoAppColors.main,
      body: const Column(
        children: [
          SizedBox(
            height: 50,
          ),
          HomeTopBar(),
          SizedBox(
            height: 20,
          ),
          AddressHomeWidget(),
          Spacer(),
          CenterHomeWidget(),
          Spacer(),
          FooterHomeWidget(),
        ],
      ),
    );
  }
}
