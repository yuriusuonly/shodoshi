import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mojisumi/data/hiragana_strokes.dart';
import 'package:mojisumi/models/character_data.dart';
import 'package:mojisumi/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('もじすみ'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        itemCount: hiraganaGroups.length,
        itemBuilder: (context, groupIndex) {
          final group = hiraganaGroups[groupIndex];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 4),
                child: Text(
                  group.label.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 2,
                    color: AppTheme.groupHeader,
                  ),
                ),
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  childAspectRatio: 0.85,
                ),
                itemCount: group.characters.length,
                itemBuilder: (context, charIndex) {
                  final character = group.characters[charIndex];
                  return _CharacterCard(character: character);
                },
              ),
              const SizedBox(height: 8),
            ],
          );
        },
      ),
    );
  }
}

class _CharacterCard extends StatelessWidget {
  final HiraganaCharacter character;

  const _CharacterCard({required this.character});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () => context.push('/practice/${character.id}'),
        borderRadius: BorderRadius.circular(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              character.character,
              style: const TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w400,
                color: AppTheme.ink,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              character.romanji,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: AppTheme.inkLight,
                letterSpacing: 1,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              '${character.strokeCount} strokes',
              style: TextStyle(
                fontSize: 9,
                color: AppTheme.inkLight.withAlpha(150),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
