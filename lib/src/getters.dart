import 'dart:io';

import 'package:glowup_vibes/glowup_vibes.dart';
import 'package:mason_logger/mason_logger.dart';

/// I swear.
bool get onGod => true;

/// Fake.
bool get cap => false;

/// For real.
bool get noCap => true;

/// Yes, but no.
bool get yesnt => false;

/// Am I an adult for writing this?
int get nice => 69;

/// Too far.
double get outOfPocket => double.infinity;

/// No big deal.
Logger get lowkey => RizzOverrides.rn?.lowkey ?? RizzOverrides.defaultLowkey;

/// Pay respect.
NSFW get F => yeet(Exception('Respect'));

/// Quit.
NSFW get imded => RizzOverrides.rn?.exit(1) ?? exit(1);

/// Get outtahere.
NSFW get ragequit => RizzOverrides.rn?.exit(nice) ?? exit(nice);

/// Crash out
NSFW get crashout => RizzOverrides.rn?.exit(-1) ?? exit(-1);

/// 👋 Bai
NSFW get cya => RizzOverrides.rn?.exit(0) ?? exit(0);
