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

  test('typah', () {
    expect(typah(nice), equals(int));
    expect(typah('nice'), equals(String));
  });
}
