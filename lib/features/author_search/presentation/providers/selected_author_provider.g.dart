// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_author_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Holds the currently selected [Author] for the wide-layout right panel.
/// Null means no author is selected (placeholder is shown).

@ProviderFor(SelectedAuthor)
final selectedAuthorProvider = SelectedAuthorProvider._();

/// Holds the currently selected [Author] for the wide-layout right panel.
/// Null means no author is selected (placeholder is shown).
final class SelectedAuthorProvider
    extends $NotifierProvider<SelectedAuthor, Author?> {
  /// Holds the currently selected [Author] for the wide-layout right panel.
  /// Null means no author is selected (placeholder is shown).
  SelectedAuthorProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedAuthorProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedAuthorHash();

  @$internal
  @override
  SelectedAuthor create() => SelectedAuthor();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Author? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Author?>(value),
    );
  }
}

String _$selectedAuthorHash() => r'bc0bb2dbcb1ffdd6e5491d21ab4c9c00825dba1d';

/// Holds the currently selected [Author] for the wide-layout right panel.
/// Null means no author is selected (placeholder is shown).

abstract class _$SelectedAuthor extends $Notifier<Author?> {
  Author? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<Author?, Author?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Author?, Author?>,
              Author?,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
