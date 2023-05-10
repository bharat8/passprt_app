import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:passprt_app/utils/constants/ui_constants.dart';
import 'package:sizer/sizer.dart';

class SecondaryCTAButton extends StatelessWidget {
  const SecondaryCTAButton({
    super.key,
    this.label = '',
    this.onTap,
    this.fitWidth = false,
    this.labelStyle,
    this.padding,
    this.image,
  });
  final String label;
  final void Function()? onTap;
  final bool fitWidth;
  final TextStyle? labelStyle;
  final EdgeInsetsGeometry? padding;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        HapticFeedback.lightImpact();
        onTap?.call();
      },
      child: Container(
        width: fitWidth ? 100.w : null,
        padding: padding ??
            const EdgeInsets.all(
              UIConstants.baseMargin * 2,
            ),
        decoration: BoxDecoration(
          borderRadius: UIConstants.baseBorderRadius,
          border: Border.all(),
        ),
        child: Text(
          label.toUpperCase(),
          style: labelStyle ??
              Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
