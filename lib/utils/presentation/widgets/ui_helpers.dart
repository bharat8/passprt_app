//* Horizontal Spacing
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:passprt_app/utils/constants/ui_constants.dart';

const Widget horizontalSpaceTiny = SizedBox(width: UIConstants.baseMargin / 2);
const Widget horizontalSpaceSmall = SizedBox(width: UIConstants.baseMargin);
const Widget horizontalSpaceRegular =
    SizedBox(width: UIConstants.baseMargin * 2);
const Widget horizontalSpaceMedium =
    SizedBox(width: UIConstants.baseMargin * 3);
const Widget horizontalSpaceLarge = SizedBox(width: UIConstants.baseMargin * 4);
const Widget bundleHorizontalSpacing =
    SizedBox(width: UIConstants.baseMargin * 1.5);

//* Vertical Spacing
const Widget verticalSpaceTiny = SizedBox(height: UIConstants.baseMargin / 2);
const Widget verticalSpaceSmall = SizedBox(height: UIConstants.baseMargin);
const Widget verticalSpaceRegular =
    SizedBox(height: UIConstants.baseMargin * 2);
const Widget verticalSpaceMedium = SizedBox(height: UIConstants.baseMargin * 3);
const Widget verticalSpaceLarge = SizedBox(height: UIConstants.baseMargin * 4);
const Widget bundleVerticalSpacing =
    SizedBox(height: UIConstants.baseMargin * 1.5);

/// Calculates the scroll offset for given scroll controller.
/// [scrollOffsetThreshold] is the threshold offset for controller
/// default is 0.7(70%)
bool isBottom(
  ScrollController scrollController, [
  double scrollOffsetThreshold = 0.7,
]) {
  if (!scrollController.hasClients ||
      scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
    return false;
  }

  final maxScroll = scrollController.position.maxScrollExtent;
  final currentScroll = scrollController.offset;

  return currentScroll >= (maxScroll * scrollOffsetThreshold) &&
      currentScroll > 0;
}
