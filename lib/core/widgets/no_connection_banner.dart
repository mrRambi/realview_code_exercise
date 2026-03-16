import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:realview_code_exercise/core/providers/connectivity_provider.dart';
import 'package:realview_code_exercise/l10n/app_localizations.dart';

/// Wraps [child] with a persistent banner shown when the device has no
/// network connectivity. The banner dismisses automatically when connectivity
/// is restored.
class NoConnectionBanner extends ConsumerWidget {
  final Widget child;

  const NoConnectionBanner({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final connectivityAsync = ref.watch(connectivityStatusProvider);

    final bool isOffline = connectivityAsync.when(
      data: (connected) => !connected,
      loading: () => false,
      error: (_, _) => false,
    );

    return Column(
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          height: isOffline ? null : 0,
          child: isOffline
              ? _OfflineBanner(message: AppLocalizations.of(context)!.errorNetwork)
              : const SizedBox.shrink(),
        ),
        Expanded(child: child),
      ],
    );
  }
}

class _OfflineBanner extends StatelessWidget {
  final String message;

  const _OfflineBanner({required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.red.shade700,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Row(
        children: [
          const Icon(Icons.wifi_off, color: Colors.white, size: 18),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              message,
              style: const TextStyle(color: Colors.white, fontSize: 13),
            ),
          ),
        ],
      ),
    );
  }
}
