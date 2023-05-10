import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:passprt_app/features/spot_details/models/spot_details/spot_details.dart';
import 'package:passprt_app/utils/constants/ui_constants.dart';
import 'package:passprt_app/utils/presentation/widgets/ui_helpers.dart';
import 'package:sizer/sizer.dart';

class PopularTreks extends StatefulWidget {
  const PopularTreks({
    required this.popularTreks,
    this.fetchMore,
    this.reachedMax = true,
    super.key,
  });
  final List<Trek> popularTreks;
  final void Function()? fetchMore;
  final bool reachedMax;

  @override
  State<PopularTreks> createState() => _PopularTreksState();
}

class _PopularTreksState extends State<PopularTreks> {
  late ScrollController _controller;

  @override
  void initState() {
    _controller = ScrollController()..addListener(_listener);
    super.initState();
  }

  void _listener() {
    if (isBottom(_controller)) {
      widget.fetchMore?.call();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.popularTreks.isEmpty && !widget.reachedMax) {
      return const CircularProgressIndicator.adaptive();
    }

    return Padding(
      padding: const EdgeInsets.only(
        bottom: UIConstants.baseMargin * 5,
      ),
      child: SizedBox(
        height: 200,
        child: ListView.builder(
          controller: _controller,
          itemCount: widget.reachedMax
              ? widget.popularTreks.length
              : widget.popularTreks.length + 1,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(
            left: UIConstants.baseMargin * 3,
          ),
          itemBuilder: (context, index) {
            if (widget.reachedMax) {
              final trek = widget.popularTreks[index];
              return _TrekItem(trek: trek);
            } else {
              if (index != widget.popularTreks.length) {
                final trek = widget.popularTreks[index];
                return _TrekItem(trek: trek);
              } else {
                return const Padding(
                  padding: EdgeInsets.only(
                    right: UIConstants.baseMargin * 3,
                  ),
                  child: Center(child: CircularProgressIndicator.adaptive()),
                );
              }
            }
          },
        ),
      ),
    );
  }
}

class _TrekItem extends StatelessWidget {
  const _TrekItem({
    required this.trek,
  });

  final Trek trek;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.w,
      margin: const EdgeInsets.only(
        right: UIConstants.baseMargin * 3,
      ),
      decoration: BoxDecoration(
        borderRadius: UIConstants.largeBorderRadius,
        color: Colors.amber,
        image: DecorationImage(
          image: CachedNetworkImageProvider(trek.thumbnail),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: ClipRRect(
              borderRadius: UIConstants.largeBorderRadius,
              child: ColoredBox(
                color: Colors.black.withOpacity(0.25),
              ),
            ),
          ),
          Positioned(
            left: UIConstants.baseMargin * 2,
            right: 0,
            bottom: UIConstants.baseMargin,
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: UIConstants.baseMargin,
              ),
              child: Text(
                trek.title,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
