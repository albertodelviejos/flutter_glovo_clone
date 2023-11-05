import 'package:flutter/material.dart';
import 'package:glovo_clone/core/navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

class RestaurantListItemWidget extends StatefulWidget {
  final String image;
  const RestaurantListItemWidget({
    super.key,
    required this.image,
  });

  @override
  State<RestaurantListItemWidget> createState() =>
      _RestaurantListItemWidgetState();
}

class _RestaurantListItemWidgetState extends State<RestaurantListItemWidget> {
  bool loading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return loading
        ? Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade100,
            child: ItemWidget(widget: widget),
          )
        : ItemWidget(widget: widget);
  }
}

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    super.key,
    required this.widget,
  });

  final RestaurantListItemWidget widget;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => navigateToRestaurantDetail(context),
      child: SizedBox(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.image),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 30,
                    width: 110,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(
                          Icons.thumb_up_alt_outlined,
                          color: Colors.black,
                          size: 15,
                        ),
                        Text('82%',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 14)),
                        Text(
                          '(500+)',
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Text('La Colt Kebab',
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w700)),
                ),
                const Spacer(),
                Container(
                  color: Colors.grey[100],
                  child: const Padding(
                    padding: EdgeInsets.all(3.0),
                    child: Text('Kebab',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.directions_bike,
                    size: 15,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    '14,99 RON',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text('35-45 min',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
