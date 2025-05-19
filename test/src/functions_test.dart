// ignore_for_file: inference_failure_on_function_invocation

import 'package:glowup_vibes/src/functions.dart';
import 'package:glowup_vibes/src/getters.dart';
import 'package:test/test.dart';

void main() {
  test('fr', () {
    expect(() => fr(true), returnsNormally);
    expect(() => fr(false), throwsA(isA<AssertionError>()));
    expect(() => fr(true, 'For real?'), returnsNormally);
    expect(() => fr(false, 'For real?'), throwsA(isA<AssertionError>()));
  });

  test('cook', () {
    expect(cook(), completion(isNull));
    expect(cook(nice), completion(equals(nice)));
  });

  test('derp', () {
    expect(derp('ohno'), throwsA('ohno'));
    expect(derp('ohno', StackTrace.current), throwsA('ohno'));
  });

  test('holdup', () {
    expect(holdup([]), completion(isEmpty));
    expect(holdup([cook(nice)]), completion(equals([nice])));
  });

  test('yeet', () {
    expect(() => yeet(Exception()), throwsA(isA<Exception>()));
  });

  test('brb', () {
    expect(brb(Duration.zero), completion(isNull));
    expect(brb(Duration.zero, () => nice), completion(equals(nice)));
  });

  test('getItDone', () {
    expect(
      getItDone([
        brb(const Duration(milliseconds: 100), () => 1),
        brb(const Duration(milliseconds: 50), () => 2),
      ]),
      completion(equals(2)),
    );
  });

  test('keepAtIt', () {
    var counter = 0;
    final future = keepAtIt(() async {
      counter++;
      return counter < 3;
    });
    expect(future, completes);
    expect(future.then((_) => counter), completion(equals(3)));
  });

  test('typah', () {
    expect(typah(nice), equals(int));
    expect(typah('nice'), equals(String));
  });
}
