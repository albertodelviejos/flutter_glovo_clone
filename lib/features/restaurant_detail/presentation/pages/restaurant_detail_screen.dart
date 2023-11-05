import 'package:flutter/material.dart';
import 'package:glovo_clone/features/restaurant_detail/presentation/widgets/offer_tag_widget.dart';
import 'package:glovo_clone/features/restaurant_detail/presentation/widgets/restaurant_detail_item_widget.dart';
import 'package:glovo_clone/features/restaurant_detail/presentation/widgets/restaurant_detail_top_bar_widget.dart';
import 'package:glovo_clone/features/restaurant_detail/presentation/widgets/restaurant_icon_widget.dart';
import 'package:glovo_clone/features/restaurant_detail/presentation/widgets/searcher_field_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class RestaurantDetailScreen extends StatelessWidget {
  const RestaurantDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset('assets/food/food1.jpeg'),
            const Padding(
              padding: EdgeInsets.only(top: 60.0, left: 20, right: 20),
              child: RestaurantDetailTopBar(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120.0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 40),
                      Text(
                        'Cartofisserie',
                        style: GoogleFonts.poppins(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const OfferTagWidget(),
                      const SizedBox(height: 20),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RestaurantIconWidget(
                              icon: Icons.thumb_up_alt_outlined,
                              text: '92%',
                            ),
                            RestaurantIconWidget(
                              icon: Icons.timer_outlined,
                              text: '35-45\'',
                            ),
                            RestaurantIconWidget(
                              icon: Icons.directions_bike_outlined,
                              text: '7,99 RON',
                            ),
                            RestaurantIconWidget(
                              icon: Icons.location_on_outlined,
                              text: 'Prime >',
                              backgroundColor: Colors.deepPurple,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 40),
                      const SearcherFieldWidget(
                        text: '¿Qué necesitas?',
                      ),
                      const SizedBox(height: 40),
                      Text('Platos',
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return const RestaurantDetailItem();
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
