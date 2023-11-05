import 'package:flutter/material.dart';
import 'package:glovo_clone/features/home/presentation/widgets/footer_painter.dart';

class FooterHomeWidget extends StatelessWidget {
  const FooterHomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CustomPaint(
                size: Size(MediaQuery.of(context).size.width,
                    150), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                painter: FooterPainter(),
              ),
              Container(
                color: Colors.white,
                height: 80,
                width: MediaQuery.of(context).size.width,
              ),
            ],
          ),
        ),
        const Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 50),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Establecimientos patrocinados',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                // CarouselSlider(
                //   options: CarouselOptions(
                //     autoPlay: true,
                //     aspectRatio: 2.0,
                //     enlargeCenterPage: true,
                //   ),
                //   items: const [],
                // ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
