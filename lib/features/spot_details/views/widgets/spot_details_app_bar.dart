import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:passprt_app/features/spot_details/models/spot_details/spot_details.dart';
import 'package:passprt_app/utils/constants/ui_constants.dart';
import 'package:passprt_app/utils/presentation/widgets/carousel_widget.dart';

class SpotDetailsAppBar extends StatelessWidget {
  const SpotDetailsAppBar({
    required this.spotDetails,
    required this.carouselController,
    this.isAppBarCollapsed,
    super.key,
  });
  final SpotDetails spotDetails;
  final CarouselController carouselController;
  final bool? isAppBarCollapsed;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 250,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: (isAppBarCollapsed ?? true)
            ? null
            : const EdgeInsets.only(
                bottom: UIConstants.baseMargin * 3,
              ),
        title: Text(
          spotDetails.bannerTitle,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
        background: CarouselWidget(
          controller: carouselController,
          carouselList: spotDetails.bannerImages,
        ),
        stretchModes: const [
          StretchMode.zoomBackground,
          StretchMode.blurBackground,
        ],
        centerTitle: true,
      ),
      leading: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            left: UIConstants.baseMargin * 2,
          ),
          child: iconWidget(Icons.arrow_back_ios_rounded),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(
            right: UIConstants.baseMargin * 2,
          ),
          child: iconWidget(Icons.search_rounded),
        ),
      ],
      pinned: true,
      stretch: true,
    );
  }

  Widget iconWidget(IconData icon) {
    return Container(
      padding: const EdgeInsets.all(
        UIConstants.baseMargin * 0.8,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        color: Colors.black,
      ),
    );
  }
}
