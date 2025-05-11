// ignore_for_file: avoid_positional_boolean_parameters

import 'dart:async';

import 'package:glowup_vibes/glowup_vibes.dart';

/// For real?
void fr(bool swear, [String? message]) {
  assert(swear, message);
}

/// Cook something.
Future<T> cook<T>([FutureOr<T>? somthing]) {
  return Future.value(somthing);
}

/// Cook something.
Future<dynamic> derp(Object error, [StackTrace? tmi]) {
  return Future.error(error, tmi);
}

/// Wait for it. All of it.
Future<List<T>> holdup<T>(
  Iterable<Future<T>> futures, {
  bool stocked = false,
  void Function(T successValue)? tidyUp,
}) {
  return Future.wait<T>(futures, eagerError: stocked, cleanUp: tidyUp);
}

/// Yeet an exception.
NSFW yeet(Exception e) => throw e;

/// Be right back. Pinky promise.
Future<T> brb<T>(
  Duration duration, [
  FutureOr<T> Function()? computation,
]) async {
  return Future.delayed(duration, computation);
}

/// Get it done, first one to finish.
Future<T> getItDone<T>(Iterable<Future<T>> futures) {
  return Future.any(futures);
}

/// Keep going until you hit the end.
Future<void> keepAtIt(Future<bool> Function() condition) {
  return Future.doWhile(condition);
}

/// Type of T.
Type typah<T>(T wat) => T;
