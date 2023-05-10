import 'package:flutter/material.dart';
import 'package:passprt_app/utils/constants/ui_constants.dart';

class StarWidget extends StatefulWidget {
  const StarWidget({
    required this.rating,
    super.key,
  });
  final double rating;

  @override
  State<StarWidget> createState() => _StarWidgetState();
}

class _StarWidgetState extends State<StarWidget> {
  late List<Widget> ratingList;

  @override
  void initState() {
    super.initState();
    ratingList = [];

    final remainder = widget.rating - widget.rating.truncate();

    for (var i = 0; i < widget.rating.toInt(); i++) {
      ratingList.add(
        Icon(
          Icons.star_rounded,
          color: Colors.amber[400],
          size: UIConstants.baseIconSize * 1.5,
        ),
      );
    }

    if (remainder != 0.0) {
      ratingList.add(
        Icon(
          Icons.star_half_rounded,
          color: Colors.amber[400],
          size: UIConstants.baseIconSize * 1.5,
        ),
      );
    }

    final remaining = (5 - widget.rating).toInt();

    if (remaining != 0) {
      for (var i = 0; i < remaining; i++) {
        ratingList.add(
          Icon(
            Icons.star_outline_rounded,
            color: Colors.amber[400],
            size: UIConstants.baseIconSize * 1.5,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(children: ratingList);
  }
}
