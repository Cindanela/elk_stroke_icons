## Unreleased

* `LucideIcon` imports `package:flutter/widgets.dart` rather than
  `material.dart`, so apps on `package:material_ui` need no Material import.
  Its colour fallback is now plain black in place of `Colors.black`.
* `parseSvgPath` reads compact arc flags (`a1 1 0 01.5.5`). They were read as
  one number, so every icon using them threw a `RangeError` while painting.

## 0.1.1

* Regenerated from upstream Lucide: 1856 → 2019 icons (163 added, none removed).
* 13 icons renamed upstream (`archive-restore`, `bold`, `circle-parking`,
  `circle-parking-off`, `copyright`, `heading`, `music`, `music-2`, `music-3`,
  `music-4`, `square-m`, `square-parking`, `square-parking-off`). The old
  constants remain as `@Deprecated` and old names still resolve through
  `IconSearchService.findByName`.

## 0.1.0

* Initial release, split out of `elk_icon_picker` 0.1.4: the Lucide icon data
  (1856 icons), `LucideIcon`, `LucideIconData`, `LucideCategory`,
  `IconSearchService` (including rename-safe `findByName`), and the
  generator tool.
