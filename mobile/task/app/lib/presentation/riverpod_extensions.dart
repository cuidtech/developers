import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'error_handler.dart';

typedef ErrorHandlerBuilder = Widget Function(
  Object error,
  StackTrace? stackTrace,
);

extension AsyncValueExtension<T> on AsyncValue<T> {
  /// Returns a [Widget] based on the state of the [AsyncValue].
  ///
  /// It contains a default handler for error, and loading states.
  Widget renderWhen(
    Widget Function(T data) data, {
    VoidCallback? onRetry,
    ErrorHandlerBuilder? error,
    Widget Function()? loading,
    bool skipLoadingOnRefresh = true,
    bool skipLoadingOnReload = false,
  }) {
    if (error == null) {
      assert(
        onRetry != null,
        'default error handler requires not null ref',
      );
    }

    return when<Widget>(
      data: data,
      error: (e, stackTrace) {
        log(
          e.toString(),
          error: e,
          stackTrace: stackTrace,
        );
        if (error != null) return error(e, stackTrace);
        return errorHandler(
          e,
          stackTrace,
          onRetry: onRetry!,
        );
      },
      loading: () {
        if (loading != null) return loading();
        return const Center(child: CircularProgressIndicator());
      },
      skipLoadingOnRefresh: skipLoadingOnRefresh,
      skipLoadingOnReload: skipLoadingOnReload,
    );
  }

  /// Switch-case over the state of the [AsyncValue] while purposefully not handling
  /// some cases.
  ///
  /// If [AsyncValue] was in a case that is not handled, will return [orElse].
  Widget? renderOrElse({
    Widget? Function(AsyncData<T> data)? data,
    Widget? Function(AsyncError<T> error)? error,
    Widget? Function(AsyncLoading<T> loading)? loading,
    required Widget? Function() orElse,
  }) =>
      maybeMap<Widget?>(
        data: data,
        error: error,
        loading: loading,
        orElse: orElse,
      );
}
