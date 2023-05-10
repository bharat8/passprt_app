import 'package:flutter/material.dart';
import 'package:passprt_app/utils/constants/string_constants.dart';
import 'package:passprt_app/utils/constants/ui_constants.dart';
import 'package:passprt_app/utils/infrastructure/core/failures/failures.dart';
import 'package:passprt_app/utils/presentation/buttons/secondary_cta_button.dart';
import 'package:passprt_app/utils/presentation/widgets/ui_helpers.dart';

/// Display widget for empty states of an API call
class FailureWidget extends StatelessWidget {
  const FailureWidget({
    super.key,
    this.title = '',
    this.message = ErrorStringConstants.failureText,
    this.imagePath,
    this.actionButton,
    this.hasBackground = false,
    this.backgroundColor,
    this.networkImage = true,
  });

  final String title;
  final String message;

  /// Path of the asset image
  final bool networkImage;
  final String? imagePath;
  final Widget? actionButton;
  final bool hasBackground;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return hasBackground
        ? Material(
            color: backgroundColor,
            child: _Display(
              imagePath: imagePath,
              networkImage: networkImage,
              message: message,
              title: title,
              actionButton: actionButton,
            ),
          )
        : _Display(
            imagePath: imagePath,
            networkImage: networkImage,
            message: message,
            title: title,
            actionButton: actionButton,
          );
  }
}

class _Display extends StatelessWidget {
  const _Display({
    required this.imagePath,
    required this.title,
    required this.message,
    required this.actionButton,
    required this.networkImage,
  });

  final String? imagePath;
  final bool networkImage;
  final String title;
  final String message;
  final Widget? actionButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        UIConstants.baseMargin * 2,
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            verticalSpaceMedium,
            if (title.isNotEmpty) ...[
              Text(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              verticalSpaceSmall,
            ],
            Text(
              message,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            if (actionButton != null) ...[
              verticalSpaceMedium,
              actionButton!,
            ],
          ],
        ),
      ),
    );
  }
}

Widget failureHandler(
  Failure? f,
  VoidCallback onTap,
) {
  return f?.maybeWhen(
        orElse: () {
          return const SizedBox.shrink();
        },
        serverError: (code, message) {
          return FailureWidget(
            message: message ?? ErrorStringConstants.errorWhileProcessing,
            actionButton: SecondaryCTAButton(
              label: ErrorStringConstants.retry,
              onTap: onTap,
            ),
          );
        },
        connection: () {
          return FailureWidget(
            message: ErrorStringConstants.noConnection,
            actionButton: SecondaryCTAButton(
              label: ErrorStringConstants.retry,
              onTap: onTap,
            ),
          );
        },
        localError: (message) {
          return FailureWidget(
            message: message ?? ErrorStringConstants.errorWhileProcessing,
            actionButton: SecondaryCTAButton(
              label: ErrorStringConstants.retry,
              onTap: onTap,
            ),
          );
        },
        unexpected: (message) {
          return FailureWidget(
            message: message ?? ErrorStringConstants.errorWhileProcessing,
            actionButton: SecondaryCTAButton(
              label: ErrorStringConstants.retry,
              onTap: onTap,
            ),
          );
        },
        value: (message) {
          return FailureWidget(
            message: message ?? ErrorStringConstants.errorWhileProcessing,
            actionButton: SecondaryCTAButton(
              label: ErrorStringConstants.retry,
              onTap: onTap,
            ),
          );
        },
      ) ??
      const SizedBox.shrink();
}
