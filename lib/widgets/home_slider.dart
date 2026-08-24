

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
            alignment: AlignmentDirectional.bottomCenter,
            fit: StackFit.loose,
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  height: 114.99,
                  autoPlay: true,
                  onPageChanged: (index, reason) {
                    setState(() => activeIndex = index);
                  },
                ),
                items: imageList.map<Widget>((image) {
                  return Container(
                    alignment: Alignment.bottomCenter,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(image),
                      ),
                    ),
                    
                  );
                }).toList(),
              ),
              Positioned(
                bottom: 10,
                left: 120,
                child: AnimatedSmoothIndicator(
                  activeIndex: activeIndex,
                  count: imageList.length,
                  effect: const ExpandingDotsEffect(
                    dotHeight: 10,
                    dotWidth: 10,
                    activeDotColor: Color(0xff53B175),
                    dotColor: Color(0xffD9D9D9),
                    spacing: 4,
                  ),
                ),
              ),
            ],
          );
  }
}

List<String> imageList = [
  "https://cdn2.slidemodel.com/wp-content/uploads/94073-01-supermarket-powerpoint-template-16x9-1.jpg",
  "https://cdn2.slidemodel.com/wp-content/uploads/94073-01-supermarket-powerpoint-template-16x9-4-1.jpg",
  "https://cdn2.slidemodel.com/wp-content/uploads/94073-01-supermarket-powerpoint-template-16x9-14.jpg",
  "https://cdn2.slidemodel.com/wp-content/uploads/94073-01-supermarket-powerpoint-template-16x9-14.jpg",
  "https://cdn2.slidemodel.com/wp-content/uploads/94073-01-supermarket-powerpoint-template-16x9-14.jpg",
];