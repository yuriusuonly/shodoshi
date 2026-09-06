import 'package:go_router/go_router.dart';
import 'package:mojisumi/data/hiragana_strokes.dart';
import 'package:mojisumi/screens/home_screen.dart';
import 'package:mojisumi/screens/practice_screen.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/practice/:id',
      builder: (context, state) {
        final id = state.pathParameters['id']!;
        final character = allHiragana.firstWhere(
          (c) => c.id == id,
        );
        return PracticeScreen(character: character);
      },
    ),
  ],
);
