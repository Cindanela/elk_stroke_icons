import 'package:elk_stroke_icons/elk_stroke_icons.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: _Demo()));

class _Demo extends StatelessWidget {
  const _Demo();

  @override
  Widget build(BuildContext context) {
    final saved = IconSearchService.findByName('smile');
    return Scaffold(
      body: Center(
        child: Wrap(
          spacing: 16,
          children: [
            const LucideIcon(LucideIcons.house, size: 32),
            const LucideIcon(LucideIcons.heart, color: Colors.red),
            const LucideIcon(LucideIcons.star, strokeWidth: 1.5),
            if (saved != null) LucideIcon(saved, size: 32),
          ],
        ),
      ),
    );
  }
}
