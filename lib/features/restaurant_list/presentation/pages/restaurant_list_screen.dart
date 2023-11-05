import 'package:flutter/material.dart';
import 'package:glovo_clone/core/constants.dart';
import 'package:glovo_clone/features/restaurant_detail/presentation/widgets/searcher_field_widget.dart';
import 'package:glovo_clone/features/restaurant_list/presentation/widgets/restaurant_list_item_widget.dart';
import 'package:glovo_clone/features/restaurant_list/presentation/widgets/restaurant_list_top_bar.dart';

class RestaurantListScreen extends StatelessWidget {
  const RestaurantListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 50),
              const RestaurantListScreenTopBar(),
              const SizedBox(height: 20),
              const SearcherFieldWidget(text: 'Establecimiento o producto'),
              const SizedBox(height: 20),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 20),
                itemBuilder: (context, index) => RestaurantListItemWidget(
                  image: Constants.foodImages[index],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
