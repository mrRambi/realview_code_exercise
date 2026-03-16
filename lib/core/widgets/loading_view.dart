import 'package:flutter/material.dart';
import 'package:realview_code_exercise/core/theme/theme.dart';

/// Generic centered loading indicator.
class LoadingView extends StatelessWidget {
  const LoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: AppColors.primary,
      ),
    );
  }
}
