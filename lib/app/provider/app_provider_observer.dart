import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppProviderOberserver extends ProviderObserver {
  @override
  void didAddProvider(
    ProviderBase provider,
    Object? value,
    ProviderContainer container,
  ) {
    log('didAddProvider(${provider.runtimeType}, $value, ${container.runtimeType})');
  }

  @override
  void didDisposeProvider(
    ProviderBase provider,
    ProviderContainer container,
  ) {
    log('didDispose(${provider.runtimeType}, $container)');
    super.didDisposeProvider(provider, container);
  }

  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    log('didUpdate(${provider.runtimeType}, $previousValue, $newValue)');
    super.didUpdateProvider(provider, previousValue, newValue, container);
  }

  @override
  void providerDidFail(
    ProviderBase provider,
    Object error,
    StackTrace stackTrace,
    ProviderContainer container,
  ) {
    log('didFail(${provider.runtimeType}, $error, $stackTrace $container)');
    super.providerDidFail(provider, error, stackTrace, container);
  }
}
