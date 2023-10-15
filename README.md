# 🌟 Glowup Vibes 🌟

<a title="Pub" href="https://pub.dev/packages/glowup_vibes"><img src="https://img.shields.io/pub/v/glowup_vibes.svg?style=popout"/></a>
[![License: MIT][license_badge]][license_link]

Goated 🐐 Dart language.

This package is highkey inspired by this [Babel plugin][babel-silliness]

See the OG yt short: <https://www.youtube.com/watch?v=vgcbwv_3WDU>

## Installation 💻

**❗To get your Glowup Vibes on, make sure you've got the [Dart SDK][dart_install_link] installed
on your machine.**

Install via `dart pub add`:

```sh
dart pub add glowup_vibes
```

## Wat? 🤔

Glowup Vibes is a Dart package that spices up Dart's lingo with some "internet slang" flavor. 🚀📚💬

## Why?

'cause.

## API 📖

### Top-level getters:

| With rizz     | No Rizz (original)                            |
|---------------|-----------------------------------------------|
| `onGod`       | `true`                                        |
| `cap`         | `false`                                       |
| `noCap`       | `true`                                        |
| `yesnt`       | `false`                                       |
| `nice`        | `69`                                          |
| `outOfPocket` | `double.infinity`                             |
| `F`           | Returns a `Never`. Throws a respectful error. |
| `imded`       | Calls [exit][exit] with `code` `1`.           |
| `ragequit`    | Calls [exit][exit] with `code` `nice`.        |
| `cya`         | Calls [exit][exit] with `code` `0`.           |

### Log APIs:

Based [Mason Logger][mason_logger]

| With rizz                | No Rizz (original)        |
|--------------------------|---------------------------|
| `lowkey.stan(message)`   | `logger.info(message)`    |
| `lowkey.sus(message)`    | `logger.warn(message)`    |
| `lowkey.cringe(message)` | `logger.err(message)`     |
| `lowkey.drip(message)`   | `logger.detail(message)`  |
| `lowkey.tea(message)`    | `logger.success(message)` |
| `lowkey.flex(message)`   | `logger.success(message)` |

### Future APIs:

| With rizz                                               | No Rizz (original)                                  |
|---------------------------------------------------------|-----------------------------------------------------|
| `future.letItCook((value) { ... }, ohnoes: () { ... })` | `future.then((value) { ... }, onError: () { ... })` |
| `future.busted((error) { ... })`                        | `future.catchError((error) { ... })`                |

### String APIs:

| With rizz               | No Rizz (original)              |
|-------------------------|---------------------------------|
| `'lets go FAM'.lowkey`  | `lets go fam.toLowerCase()`     |
| `'lets go FAM'.highkey` | `LETS GO FAM.toUpperCase()`     |
| `'lets go FAM'.mock`    | `lEts gO Fam` (spOngE bOB case) |

### Other APIs:

| With rizz                          | No Rizz (original)                           |
|------------------------------------|----------------------------------------------|
| ``` fr(assertion) ```              | ``` assert(assertion); ```                   |
| ``` cook(value) ```                | ``` Future.value(value) ```                  |
| ``` derp(error) ```                | ``` Future.error(error) ```                  |
| ``` holdup([future1, future2]) ``` | ``` Future.wait([future1, future2]) ```      |
| ``` yeet(exception) ```            | ``` throw exception ```                      |
| ``` brb(Duration(seconds: 1)) ```  | ``` Future.delayed(Duration(seconds: 1)) ``` |
| ``` typah(something) ```           | ``` Type typah<T>(T wat) => T ```            |

---

[mason_logger]: https://pub.dev/packages/mason_logger
[babel-silliness]: https://github.com/christina-de-martinez/babel-plugin-glowup-vibes
[exit]: https://api.dart.dev/dart-io/exit.html
[dart_install_link]: https://dart.dev/get-dart
[github_actions_link]: https://docs.github.com/en/actions/learn-github-actions
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[logo_black]: https://raw.githubusercontent.com/VGVentures/very_good_brand/main/styles/README/vgv_logo_black.png#gh-light-mode-only
[logo_white]: https://raw.githubusercontent.com/VGVentures/very_good_brand/main/styles/README/vgv_logo_white.png#gh-dark-mode-only
[mason_link]: https://github.com/felangel/mason
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[very_good_coverage_link]: https://github.com/marketplace/actions/very-good-coverage
[very_good_ventures_link]: https://verygood.ventures
[very_good_ventures_link_light]: https://verygood.ventures#gh-light-mode-only
[very_good_ventures_link_dark]: https://verygood.ventures#gh-dark-mode-only
[very_good_workflows_link]: https://github.com/VeryGoodOpenSource/very_good_workflows
