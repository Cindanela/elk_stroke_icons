# File index — elk_stroke_icons

Last updated: 2026-09-29

> Maintenance: ask Claude Code to update this file at the end of any
> session where files were added, renamed, moved, or deleted.

---

### Config

| File | Path | What it does |
|------|------|-------------|
| `pubspec.yaml` | `pubspec.yaml` | Package manifest — no dependencies beyond Flutter. |
| `elk_stroke_icons.dart` | `lib/elk_stroke_icons.dart` | Public API barrel file. |
| `check-lucide-updates.yml` | `.github/workflows/check-lucide-updates.yml` | Weekly: regenerates icons and opens an issue if upstream Lucide changed. |

### Generated

| File | Path | What it does |
|------|------|-------------|
| `lucide_icons.g.dart` | `lib/src/gen/lucide_icons.g.dart` | **Generated.** LucideIcons constants (incl. deprecated renamed names), kLucideIcons, kLucideCategories, kLucideIconAliases. |

### Models

| File | Path | What it does |
|------|------|-------------|
| `lucide_category.dart` | `lib/src/models/lucide_category.dart` | LucideCategory: id, title, representative icon. |
| `lucide_icon_data.dart` | `lib/src/models/lucide_icon_data.dart` | LucideIconData storing SVG shape primitives (circles, ellipses, lines, rects, polylines, polygons, paths) as typed tuples with tags and category membership. |

### Services

| File | Path | What it does |
|------|------|-------------|
| `icon_search_service.dart` | `lib/src/services/icon_search_service.dart` | IconSearchService.filter() — searches by name/tags, optionally within a category. findByName() — lookup that resolves renamed icons via kLucideIconAliases. |

### Utils

| File | Path | What it does |
|------|------|-------------|
| `svg_path_parser.dart` | `lib/src/utils/svg_path_parser.dart` | parseSvgPath() — SVG path d-attribute to Flutter Path (M, L, H, V, C, S, Q, T, A, Z). Not exported. |

### Widgets

| File | Path | What it does |
|------|------|-------------|
| `lucide_icon.dart` | `lib/src/widgets/lucide_icon.dart` | LucideIcon widget — renders LucideIconData as a stroked 24×24 icon via CustomPainter with lazy SVG path parsing and result caching. |

### Tool

| File | Path | What it does |
|------|------|-------------|
| `generate_lucide_icons.dart` | `tool/generate_lucide_icons.dart` | Regenerates the .g.dart from Lucide's SVG + JSON source (GitHub, or `--source=<dir>`). Zero dependencies. |

### Tests

| File | Path | What it does |
|------|------|-------------|
| `icon_search_service_test.dart` | `test/src/services/icon_search_service_test.dart` | filter() and findByName() incl. alias integrity. |
| `svg_path_parser_test.dart` | `test/src/utils/svg_path_parser_test.dart` | parseSvgPath() command coverage. |

### Example

| File | Path | What it does |
|------|------|-------------|
| `main.dart` | `example/main.dart` | Minimal LucideIcon + findByName demo for pub.dev. |
