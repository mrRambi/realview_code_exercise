import 'package:flutter/material.dart';
import 'package:realview_code_exercise/core/constants/constants.dart';
import 'package:realview_code_exercise/core/theme/theme.dart';

/// Generic error widget displayed when a failure occurs.
/// Optionally shows a retry button via [onRetry].
class ErrorView extends StatelessWidget {
  final String message;
  final VoidCallback? onRetry;

  const ErrorView({
    super.key,
    this.message = AppStrings.errorGeneric,
    this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.paddingL),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.error_outline, size: 48, color: AppColors.error),
            const SizedBox(height: AppSizes.paddingM),
            Text(
              message,
              textAlign: TextAlign.center,
              style: AppTypography.bodyMedium,
            ),
            if (onRetry != null) ...[
              const SizedBox(height: AppSizes.paddingM),
              FilledButton(
                onPressed: onRetry,
                child: const Text(AppStrings.retry),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
