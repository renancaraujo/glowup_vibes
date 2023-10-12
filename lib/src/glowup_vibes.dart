import 'dart:async';

extension DisX<T extends Object> on T {
  T get dis => this;
}

bool get onGod => true;

bool get cap => false;

bool get noCap => true;

Future<T> brb<T>(
  Duration duration, [
  FutureOr<T> Function()? computation,
]) async {
  return Future.delayed(duration, computation);
}

typedef NSFW = Never;

typedef L = Error;

NSFW get F => yeet(Exception("Repect"));

NSFW yeet(Exception e) => throw e;

void fr(bool assertion, [String? message]) {
  assert(assertion, message);
}
