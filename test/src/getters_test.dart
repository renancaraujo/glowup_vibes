import 'package:glowup_vibes/glowup_vibes.dart';
import 'package:mason_logger/mason_logger.dart';
import 'package:test/test.dart';

void main() {
  test('onGod', () => expect(onGod, true));

  test('cap', () => expect(cap, false));

  test('noCap', () => expect(noCap, true));

  test('yesnt', () => expect(yesnt, false));

  test('nice', () => expect(nice, 69));

  test('outOfPocket', () => expect(outOfPocket, double.infinity));

  test('lowkey', () => expect(lowkey, isA<Logger>()));

  test('F', () => expect(() => F, throwsA(isA<Exception>())));

  test('imded', () {
    expect(
      () => RizzOverrides.yolo(
        () => imded,
        exit: (int code) => yeet(Exception('$code')),
      ),
      throwsA(
        isA<Exception>().having(
          (e) => e.toString(),
          'message',
          'Exception: 1',
        ),
      ),
    );
  });

  test('ragequit', () {
    expect(
      () => RizzOverrides.yolo(
        () => ragequit,
        exit: (int code) => yeet(Exception('$code')),
      ),
      throwsA(
        isA<Exception>().having(
          (e) => e.toString(),
          'message',
          'Exception: 69',
        ),
      ),
    );
  });

  test('cya', () {
    expect(
      () => RizzOverrides.yolo(
        () => cya,
        exit: (int code) => yeet(Exception('$code')),
      ),
      throwsA(
        isA<Exception>().having(
          (e) => e.toString(),
          'message',
          'Exception: 0',
        ),
      ),
    );
  });
}
