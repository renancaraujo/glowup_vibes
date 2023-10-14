import 'dart:async';
import 'dart:io' as io;

const _asyncRunZoned = runZoned;

/// Zones with some rizz.
abstract class RizzOverrides {
  static final _token = Object();

  /// Right now.
  static RizzOverrides? get rn {
    return Zone.current[_token] as RizzOverrides?;
  }

  /// Run zone with rizz.
  static R yolo<R>(R Function() body, {Never Function(int)? exit}) {
    final overrides = _RizzOverridesScope(exit);
    return _asyncRunZoned(body, zoneValues: {_token: overrides});
  }

  /// exit override rizz
  Never Function(int exitCode) get exit => io.exit;
}

class _RizzOverridesScope extends RizzOverrides {
  _RizzOverridesScope(this._exit);

  final RizzOverrides? _previous = RizzOverrides.rn;
  final Never Function(int exitCode)? _exit;

  @override
  Never Function(int exitCode) get exit {
    return _exit ?? _previous?.exit ?? super.exit;
  }
}
