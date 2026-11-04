import 'package:elk_stroke_icons/elk_stroke_icons.dart';
import 'package:elk_stroke_icons/src/utils/svg_path_parser.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('compact arc flags', () {
    test('a flag can run straight into the next number', () {
      expect(
        parseSvgPath('M0 0a1 1 0 01.5.5').getBounds(),
        parseSvgPath('M0 0a1 1 0 0 1 .5 .5').getBounds(),
      );
    });

    test('both flags can run into a multi-digit number', () {
      expect(
        parseSvgPath('M0 0a5 5 0 1110 0').getBounds(),
        parseSvgPath('M0 0a5 5 0 1 1 10 0').getBounds(),
      );
    });

    test('repeated arcs under one command keep their flag positions', () {
      expect(
        parseSvgPath('M0 0a1 1 0 01.5.5 1 1 0 00.5.5').getBounds(),
        parseSvgPath('M0 0a1 1 0 0 1 .5 .5 1 1 0 0 0 .5 .5').getBounds(),
      );
    });
  });

  test('every shipped icon path parses', () {
    final broken = <String>[];
    for (final icon in kLucideIcons) {
      for (final d in icon.paths) {
        try {
          parseSvgPath(d);
        } on RangeError {
          broken.add('${icon.name}: $d');
        }
      }
    }
    expect(broken, isEmpty);
  });
}
