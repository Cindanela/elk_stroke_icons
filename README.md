# elk_stroke_icons

[![Pub Version](https://img.shields.io/pub/v/elk_stroke_icons?style=for-the-badge)](https://pub.dev/packages/elk_stroke_icons)
[![License](https://img.shields.io/badge/license-MIT%20/%20ISC-blue.svg?style=for-the-badge)](LICENSE)

All [Lucide](https://lucide.dev) icons for Flutter, drawn with `CustomPainter` from generated Dart data. No icon fonts, no SVG assets, and no dependencies beyond Flutter.

> **Unofficial.** Not affiliated with or endorsed by the [Lucide](https://lucide.dev) project. The icon data comes from Lucide under the ISC License; see [LICENSE-LUCIDE](LICENSE-LUCIDE).

Need a picker UI? See [`elk_icon_picker`](https://pub.dev/packages/elk_icon_picker), which builds on this package.

## Why CustomPainter?

1. **No font bloat**: no `.ttf`/`.otf` to ship.
2. **Dynamic styling**: stroke width and rounding change at runtime without pixelation.
3. **Cheap at runtime**: primitives are stored as typed Dart data; complex paths are parsed once and cached.

## Usage

```yaml
dependencies:
  elk_stroke_icons: ^0.1.1
```

```dart
import 'package:elk_stroke_icons/elk_stroke_icons.dart';

LucideIcon(
  LucideIcons.house,
  size: 32,
  color: Colors.blue,
  strokeWidth: 2.5,
)
```

| Property | Description | Default |
|----------|-------------|---------|
| `data` | **Required**. The icon data to render (e.g., `LucideIcons.house`) | - |
| `size` | The size of the icon | `24` |
| `color` | The color of the icon's stroke | `IconTheme.of(context).color` |
| `strokeWidth` | The width of the icon's stroke | `2.0` |
| `rounded` | Whether to use rounded stroke caps and joins | `true` |

### Searching

```dart
final results = IconSearchService.filter('arrow', categoryId: 'navigation');
```

`kLucideIcons` is the full list and `kLucideCategories` holds Lucide's categories.

### Saving and restoring an icon by name

Store the icon's `name` (e.g. `'circle-check'`) and look it up again with
`IconSearchService.findByName`. Lucide occasionally renames icons upstream;
old names (e.g. `'smile'`, now `'face-slightly-smiling'`) still resolve via
`kLucideIconAliases`, so saved data keeps working after an icon set update.

```dart
final icon = IconSearchService.findByName(savedName) ?? LucideIcons.circleQuestionMark;
```

Renamed icons also keep deprecated constants (e.g. `LucideIcons.smile`), so
existing code still compiles and the analyzer points you at the new name.

## Regenerating the icon data

`lib/src/gen/lucide_icons.g.dart` is generated from Lucide's published source:

```sh
dart run tool/generate_lucide_icons.dart            # all icons, from GitHub
dart run tool/generate_lucide_icons.dart --source=<lucide checkout>
```

A weekly GitHub Action opens an issue when upstream Lucide has changed.

## License

- Package code: [MIT License](LICENSE).
- Lucide icon data: [ISC License](LICENSE-LUCIDE).
