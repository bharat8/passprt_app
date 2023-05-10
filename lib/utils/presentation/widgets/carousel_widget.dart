import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:passprt_app/utils/constants/ui_constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({
    required this.controller,
    required this.carouselList,
    super.key,
  });
  final List<String> carouselList;
  final CarouselController controller;

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: CarouselSlider.builder(
            carouselController: widget.controller,
            options: CarouselOptions(
              viewportFraction: 1,
              aspectRatio: 1,
              autoPlay: true,
              scrollPhysics: const PageScrollPhysics(
                parent: BouncingScrollPhysics(),
              ),
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
            itemCount: widget.carouselList.length,
            itemBuilder: (context, index, _) {
              return Stack(
                children: [
                  Positioned.fill(
                    child: CachedNetworkImage(
                      imageUrl: widget.carouselList[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned.fill(
                    child: ClipRRect(
                      borderRadius: UIConstants.largeBorderRadius,
                      child: ColoredBox(
                        color: Colors.black.withOpacity(0.2),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        Positioned(
          bottom: UIConstants.baseMargin,
          left: 0,
          right: 0,
          child: Center(
            child: AnimatedSmoothIndicator(
              activeIndex: currentIndex,
              count: widget.carouselList.length,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.white,
                dotColor: Colors.grey[400]!,
                dotWidth: 15,
                dotHeight: 10,
                expansionFactor: 2.5,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
