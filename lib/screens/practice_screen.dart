import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mojisumi/models/character_data.dart';
import 'package:mojisumi/theme/app_theme.dart';
import 'package:mojisumi/widgets/stroke_canvas.dart';

class PracticeScreen extends StatefulWidget {
  final HiraganaCharacter character;

  const PracticeScreen({super.key, required this.character});

  @override
  State<PracticeScreen> createState() => _PracticeScreenState();
}

class _PracticeScreenState extends State<PracticeScreen>
    with SingleTickerProviderStateMixin {
  late Key _canvasKey;
  int _completedCount = 0;

  @override
  void initState() {
    super.initState();
    _canvasKey = UniqueKey();
  }

  void _resetCanvas() {
    setState(() {
      _canvasKey = UniqueKey();
      _completedCount = 0;
    });
  }

  void _onStrokeComplete() {
    setState(() {
      _completedCount++;
    });
  }

  void _showCompletionDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 12),
            Text(
              widget.character.character,
              style: const TextStyle(
                fontSize: 72,
                color: AppTheme.success,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Perfect!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: AppTheme.ink,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              '${widget.character.romanji} — ${widget.character.strokeCount} strokes',
              style: const TextStyle(
                fontSize: 14,
                color: AppTheme.inkLight,
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              _resetCanvas();
            },
            child: const Text('Practice Again'),
          ),
          FilledButton(
            onPressed: () {
              Navigator.of(context).pop();
              context.go('/');
            },
            style: FilledButton.styleFrom(
              backgroundColor: AppTheme.success,
            ),
            child: const Text('Done'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, size: 20),
          onPressed: () => context.go('/'),
        ),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              widget.character.character,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(width: 8),
            Text(
              widget.character.romanji,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppTheme.inkLight,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh, size: 22),
            onPressed: _resetCanvas,
            tooltip: 'Reset',
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              _buildStrokeIndicator(),
              const SizedBox(height: 8),
              _buildProgressRow(),
              const SizedBox(height: 12),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: StrokeCanvas(
                    key: _canvasKey,
                    character: widget.character,
                    onComplete: () {
                      _onStrokeComplete();
                      _showCompletionDialog();
                    },
                  ),
                ),
              ),
              const SizedBox(height: 16),
              _buildInstructions(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStrokeIndicator() {
    final total = widget.character.strokeCount;
    final done = _completedCount;

    return Row(
      children: [
        ...List.generate(total, (index) {
          final isDone = index < done;
          final isActive = index == done;
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                height: 6,
                decoration: BoxDecoration(
                  color: isDone
                      ? AppTheme.success
                      : isActive
                          ? AppTheme.activeStroke
                          : AppTheme.guideStroke.withAlpha(80),
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
            ),
          );
        }),
        const SizedBox(width: 12),
        Text(
          '$done/$total',
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: AppTheme.inkLight,
          ),
        ),
      ],
    );
  }

  Widget _buildProgressRow() {
    final total = widget.character.strokeCount;
    final done = _completedCount;
    final next = done < total ? done + 1 : null;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: next != null ? AppTheme.activeStrokeLight : AppTheme.successLight,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                next != null ? Icons.edit : Icons.check_circle,
                size: 16,
                color: next != null ? AppTheme.activeStroke : AppTheme.success,
              ),
              const SizedBox(width: 6),
              Text(
                next != null
                    ? 'Stroke $next of $total'
                    : 'All strokes done!',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: next != null ? AppTheme.activeStroke : AppTheme.success,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildInstructions() {
    final total = widget.character.strokeCount;
    final done = _completedCount;
    final next = done < total ? done + 1 : null;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: AppTheme.activeStrokeLight,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(
            Icons.touch_app,
            size: 20,
            color: AppTheme.activeStroke.withAlpha(200),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              next != null
                  ? 'Swipe along the highlighted stroke of ${widget.character.character}'
                  : 'All strokes completed!',
              style: const TextStyle(
                fontSize: 13,
                color: AppTheme.ink,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          TextButton(
            onPressed: _resetCanvas,
            child: const Text('Reset'),
          ),
        ],
      ),
    );
  }
}
