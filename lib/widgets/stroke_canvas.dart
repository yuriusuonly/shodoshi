import 'dart:math';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:mojisumi/models/character_data.dart';
import 'package:mojisumi/theme/app_theme.dart';

class StrokeCanvas extends StatefulWidget {
  final HiraganaCharacter character;
  final VoidCallback onComplete;

  const StrokeCanvas({
    super.key,
    required this.character,
    required this.onComplete,
  });

  @override
  State<StrokeCanvas> createState() => _StrokeCanvasState();
}

class _StrokeCanvasState extends State<StrokeCanvas>
    with SingleTickerProviderStateMixin {
  int _currentStrokeIndex = 0;
  final List<List<Offset>> _completedStrokes = [];
  List<Offset> _currentPath = [];

  late AnimationController _successController;
  late Animation<double> _successScale;

  Rect _glyphBounds = Rect.zero;

  @override
  void initState() {
    super.initState();
    _successController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );
    _successScale = Tween<double>(begin: 1.0, end: 1.05).animate(
      CurvedAnimation(parent: _successController, curve: Curves.elasticOut),
    );
  }

  @override
  void dispose() {
    _successController.dispose();
    super.dispose();
  }

  void _computeGlyphBounds(Size canvasSize) {
    final glyphSize = min(canvasSize.width, canvasSize.height) * 0.82;

    final builder = ui.ParagraphBuilder(
      ui.ParagraphStyle(fontSize: glyphSize, fontWeight: FontWeight.w400),
    )..addText(widget.character.character);

    final paragraph = builder.build()
      ..layout(ui.ParagraphConstraints(width: canvasSize.width));

    final boxes = paragraph.getBoxesForRange(
      0,
      widget.character.character.length,
    );

    if (boxes.isNotEmpty) {
      _glyphBounds = boxes.first.toRect();
    } else {
      _glyphBounds = Rect.fromLTWH(
        (canvasSize.width - paragraph.width) / 2,
        (canvasSize.height - paragraph.height) / 2,
        paragraph.width,
        paragraph.height,
      );
    }
  }

  void _onPanStart(DragStartDetails details) {
    setState(() {
      _currentPath = [details.localPosition];
    });
  }

  void _onPanUpdate(DragUpdateDetails details) {
    setState(() {
      _currentPath.add(details.localPosition);
    });
  }

  void _onPanEnd(DragEndDetails details) {
    if (_currentPath.length > 2) {
      setState(() {
        _completedStrokes.add(List.from(_currentPath));
      });

      _successController.forward(from: 0.0);

      _currentStrokeIndex++;
      if (_currentStrokeIndex >= widget.character.strokeCount) {
        Future.delayed(const Duration(milliseconds: 500), () {
          widget.onComplete();
        });
      }
    }
    setState(() {
      _currentPath = [];
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final size = Size(constraints.maxWidth, constraints.maxHeight);
        _computeGlyphBounds(size);

        return GestureDetector(
          onPanStart: _onPanStart,
          onPanUpdate: _onPanUpdate,
          onPanEnd: _onPanEnd,
          child: AnimatedBuilder(
            animation: _successScale,
            builder: (context, child) {
              return Transform.scale(
                scale: _successScale.value,
                child: child,
              );
            },
            child: CustomPaint(
              size: size,
              painter: _StrokePainter(
                character: widget.character,
                completedStrokes: _completedStrokes,
                currentPath: _currentPath,
                glyphBounds: _glyphBounds,
              ),
            ),
          ),
        );
      },
    );
  }
}

class _StrokePainter extends CustomPainter {
  final HiraganaCharacter character;
  final List<List<Offset>> completedStrokes;
  final List<Offset> currentPath;
  final Rect glyphBounds;

  _StrokePainter({
    required this.character,
    required this.completedStrokes,
    required this.currentPath,
    required this.glyphBounds,
  });

  @override
  void paint(Canvas canvas, Size canvasSize) {
    _drawBackground(canvas, canvasSize);
    _drawCharacterGlyph(canvas, canvasSize, AppTheme.guideStroke.withAlpha(35));
    _drawCompletedStrokes(canvas);
    _drawInk(canvas);
  }

  // ── Brush path builder ───────────────────────────────────────────

  Path _buildBrushPath(List<Offset> points, double maxHalfWidth) {
    if (points.isEmpty) return Path();
    if (points.length == 1) {
      return Path()..addOval(Rect.fromCircle(center: points.first, radius: maxHalfWidth));
    }

    final leftSide = <Offset>[];
    final rightSide = <Offset>[];

    for (int i = 0; i < points.length; i++) {
      final perp = _perpAt(points, i);
      leftSide.add(points[i] + perp * maxHalfWidth);
      rightSide.add(points[i] - perp * maxHalfWidth);
    }

    final path = Path();
    path.moveTo(leftSide.first.dx, leftSide.first.dy);

    for (int i = 1; i < leftSide.length; i++) {
      if (i < leftSide.length - 1) {
        final mid = Offset(
          (leftSide[i].dx + leftSide[i + 1].dx) / 2,
          (leftSide[i].dy + leftSide[i + 1].dy) / 2,
        );
        path.quadraticBezierTo(leftSide[i].dx, leftSide[i].dy, mid.dx, mid.dy);
      } else {
        path.lineTo(leftSide[i].dx, leftSide[i].dy);
      }
    }

    for (int i = rightSide.length - 1; i >= 0; i--) {
      if (i > 0 && i < rightSide.length - 1) {
        final mid = Offset(
          (rightSide[i].dx + rightSide[i - 1].dx) / 2,
          (rightSide[i].dy + rightSide[i - 1].dy) / 2,
        );
        path.quadraticBezierTo(
            rightSide[i].dx, rightSide[i].dy, mid.dx, mid.dy);
      } else {
        path.lineTo(rightSide[i].dx, rightSide[i].dy);
      }
    }

    path.close();
    return path;
  }

  static Offset _perpAt(List<Offset> points, int i) {
    if (points.length < 2) return const Offset(0, -1);

    Offset dir;
    if (i == 0) {
      dir = points[1] - points[0];
    } else if (i == points.length - 1) {
      dir = points[i] - points[i - 1];
    } else {
      final d1 = points[i] - points[i - 1];
      final d2 = points[i + 1] - points[i];
      final l1 = d1.distance;
      final l2 = d2.distance;
      final n1 = l1 == 0 ? Offset.zero : d1 / l1;
      final n2 = l2 == 0 ? Offset.zero : d2 / l2;
      dir = n1 + n2;
    }

    final len = dir.distance;
    if (len == 0) return const Offset(0, -1);
    final n = dir / len;
    return Offset(-n.dy, n.dx);
  }

  // ── Drawing ──────────────────────────────────────────────────────

  void _drawBackground(Canvas canvas, Size canvasSize) {
    final bgPaint = Paint()..color = AppTheme.canvasWhite;
    canvas.drawRRect(
      RRect.fromRectAndRadius(Offset.zero & canvasSize, const Radius.circular(16)),
      bgPaint,
    );

    final gridPaint = Paint()..color = const Color(0xFFE0E0E0)..strokeWidth = 0.5;
    final c = Offset(canvasSize.width / 2, canvasSize.height / 2);
    canvas.drawLine(Offset(c.dx, 40), Offset(c.dx, canvasSize.height - 40), gridPaint);
    canvas.drawLine(Offset(40, c.dy), Offset(canvasSize.width - 40, c.dy), gridPaint);

    final dashPaint = Paint()..color = const Color(0xFFE8E8E8)..strokeWidth = 0.5;
    canvas.drawLine(const Offset(40, 40), Offset(canvasSize.width - 40, canvasSize.height - 40), dashPaint);
    canvas.drawLine(Offset(canvasSize.width - 40, 40), Offset(40, canvasSize.height - 40), dashPaint);
  }

  void _drawCharacterGlyph(Canvas canvas, Size canvasSize, Color color) {
    final glyphSize = min(canvasSize.width, canvasSize.height) * 0.82;
    final textPainter = TextPainter(
      text: TextSpan(
        text: character.character,
        style: TextStyle(fontSize: glyphSize, color: color, fontWeight: FontWeight.w400),
      ),
      textDirection: TextDirection.ltr,
    )..layout(maxWidth: canvasSize.width);

    textPainter.paint(
      canvas,
      Offset(
        (canvasSize.width - textPainter.width) / 2,
        (canvasSize.height - textPainter.height) / 2,
      ),
    );
  }

  void _drawCompletedStrokes(Canvas canvas) {
    for (final stroke in completedStrokes) {
      if (stroke.length < 2) continue;
      final brushPath = _buildBrushPath(stroke, 10);
      canvas.drawPath(brushPath, Paint()..color = AppTheme.ink);
    }
  }

  void _drawInk(Canvas canvas) {
    if (currentPath.length < 2) return;
    final brushPath = _buildBrushPath(currentPath, 10);
    canvas.drawPath(brushPath, Paint()..color = AppTheme.ink);
  }

  @override
  bool shouldRepaint(covariant _StrokePainter oldDelegate) {
    return oldDelegate.completedStrokes.length != completedStrokes.length ||
        oldDelegate.currentPath.length != currentPath.length;
  }
}
