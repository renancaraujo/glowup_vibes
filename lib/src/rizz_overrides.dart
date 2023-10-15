import 'dart:async';
import 'dart:io' as io;

import 'package:mason_logger/mason_logger.dart';

const _asyncRunZoned = runZoned;

/// Zones with some rizz.
abstract class RizzOverrides {
  static final _token = Object();

  /// Default [lowkey].
  static final defaultLowkey = Logger();

  /// Right now.
  static RizzOverrides? get rn {
    return Zone.current[_token] as RizzOverrides?;
  }

  /// Run zone with rizz.
  static R yolo<R>(
    R Function() body, {
    Never Function(int)? exit,
    Logger? lowkey,
  }) {
    final overrides = _RizzOverridesScope(exit, lowkey);
    return _asyncRunZoned(
      body,
      zoneValues: {
        _token: overrides,
      },
    );
  }

  /// exit override rizz
  Never Function(int exitCode) get exit => io.exit;

  /// lowkey override rizz
  Logger get lowkey => defaultLowkey;
}

class _RizzOverridesScope extends RizzOverrides {
  _RizzOverridesScope(this._exit, this._lowkey);

  final RizzOverrides? _previous = RizzOverrides.rn;
  final Never Function(int exitCode)? _exit;
  final Logger? _lowkey;

  @override
  Never Function(int exitCode) get exit {
    return _exit ?? _previous?.exit ?? super.exit;
  }

  @override
  Logger get lowkey {
    return _lowkey ?? _previous?.lowkey ?? super.lowkey;
  }
}
