import 'dart:async';

import 'package:glowup_vibes/glowup_vibes.dart';
import 'package:mason_logger/mason_logger.dart';

/// Dis = this,
extension DisX<T extends Object> on T {
  /// This.
  T get dis => this;
}

/// [Logger] with rizz.
extension LoggerX on Logger {
  /// Info.
  void stan(String? message, {Swag? swag}) => info(message, style: swag);

  /// Warning.
  void sus(String? message, {String hashtag = 'SUS', Swag? swag}) {
    warn(
      message,
      style: swag,
      tag: hashtag,
    );
  }

  /// Error.
  void cringe(String? message, {Swag? swag}) {
    err(
      message,
      style: swag,
    );
  }

  /// Debug.
  void drip(String? message, {Swag? swag}) {
    detail(
      message,
      style: swag,
    );
  }

  /// Success.
  void tea(String? message, {Swag? swag}) {
    success(
      message,
      style: swag,
    );
  }

  /// Success.
  void flex(String? message, {Swag? swag}) {
    success(
      message,
      style: swag,
    );
  }
}

/// [Future] with rizz.
extension FutureX<T> on Future<T> {
  /// Let it cook.
  Future<R> letItCook<R>(
    FutureOr<R> Function(T wat) onValue, {
    Function? ohnoes,
  }) {
    return then(onValue, onError: ohnoes);
  }

  /// Oh noes.
  Future<T> busted(
    Function damn, {
    bool Function(Object error)? really,
  }) {
    return catchError(damn, test: really);
  }
}

/// [String] with rizz.
extension StringX on String {
  /// Lowercase.
  String get lowkey => dis.toLowerCase();

  /// Uppercase.
  String get highkey => dis.toUpperCase();

  /// spOnGebOb-case
  String get mock => split('').indexed.map((e) {
        final (index, char) = e;
        if (index.isEven) return char.lowkey;
        if (index % 3 == 0) return char.lowkey;
        return char.highkey;
      }).join();
}
