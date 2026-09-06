import 'dart:ui';

class StrokePoint {
  final double x;
  final double y;

  const StrokePoint(this.x, this.y);

  Offset toOffset() => Offset(x, y);
}

class HiraganaStroke {
  final List<StrokePoint> points;

  const HiraganaStroke(this.points);

  List<Offset> get offsets => points.map((p) => p.toOffset()).toList();
}

class HiraganaCharacter {
  final String character;
  final String romanji;
  final String group;
  final List<HiraganaStroke> strokes;

  const HiraganaCharacter({
    required this.character,
    required this.romanji,
    required this.group,
    required this.strokes,
  });

  int get strokeCount => strokes.length;

  String get id => '$romanji-$character';
}

class HiraganaGroup {
  final String name;
  final String label;
  final List<HiraganaCharacter> characters;

  const HiraganaGroup({
    required this.name,
    required this.label,
    required this.characters,
  });
}


