import 'dart:math';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'data/all_questions.dart';
import 'services/storage_service.dart';
import 'theme/app_theme.dart';
import 'screens/home_screen.dart';
import 'screens/exam_screen.dart';
import 'screens/result_screen.dart';
import 'screens/stats_screen.dart';
import 'screens/flashcard_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/glossary_screen.dart';

final FirebaseAnalytics analytics = FirebaseAnalytics.instance;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const HppQuizApp());
}

class HppQuizApp extends StatelessWidget {
  const HppQuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HPP Prüfungstrainer',
      theme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: const QuizController(),
    );
  }
}

const int examSize = 30;
const int reviewWrong = 25;
const int reviewRight = 5;

bool isQuestionMastered(QuestionStats? stats) {
  if (stats == null || stats.attempts == 0) return false;
  if (stats.attempts == 1 && stats.correctCount == 1) return true;
  if (stats.attempts >= 3 && stats.correctCount >= 2) return true;
  return false;
}

List<int> generateExam(QuizState state) {
  final questions = allQuestions;
  final questionStats = state.questionStats;
  final random = Random();

  final unanswered = questions
      .where((q) =>
          questionStats[q.id] == null ||
          questionStats[q.id]!.attempts == 0)
      .toList();

  if (unanswered.length >= examSize) {
    unanswered.shuffle(random);
    return unanswered.take(examSize).map((q) => q.id).toList();
  }

  if (unanswered.isNotEmpty) {
    final wrong = questions
        .where((q) =>
            questionStats[q.id] != null &&
            questionStats[q.id]!.attempts > 0 &&
            !isQuestionMastered(questionStats[q.id]))
        .toList();
    wrong.shuffle(random);
    final needed = examSize - unanswered.length;
    final fill = wrong.take(needed).toList();
    final combined = [...unanswered, ...fill];
    combined.shuffle(random);
    return combined.map((q) => q.id).toList();
  }

  // All answered → 25 wrong + 5 right
  final wrong = questions
      .where((q) => !isQuestionMastered(questionStats[q.id]))
      .toList();
  final right = questions
      .where((q) => isQuestionMastered(questionStats[q.id]))
      .toList();
  wrong.shuffle(random);
  right.shuffle(random);
  final wrongPick = wrong.take(min(reviewWrong, wrong.length)).toList();
  final rightPick = right.take(min(reviewRight, right.length)).toList();
  final needed = examSize - wrongPick.length - rightPick.length;
  final usedIds = {
    ...wrongPick.map((q) => q.id),
    ...rightPick.map((q) => q.id),
  };
  final remaining =
      questions.where((q) => !usedIds.contains(q.id)).toList();
  remaining.shuffle(random);
  final extra = remaining.take(needed).toList();
  final combined = [...wrongPick, ...rightPick, ...extra];
  combined.shuffle(random);
  return combined.map((q) => q.id).toList();
}

class QuizController extends StatefulWidget {
  const QuizController({super.key});

  @override
  State<QuizController> createState() => _QuizControllerState();
}

class _QuizControllerState extends State<QuizController> {
  QuizState? _state;
  bool _loading = true;
  String _view = 'home';

  @override
  void initState() {
    super.initState();
    _loadState();
  }

  Future<void> _loadState() async {
    final state = await StorageService.loadState();
    setState(() {
      _state = state;
      _loading = false;
    });
  }

  Future<void> _persist(QuizState newState) async {
    setState(() {
      _state = newState;
    });
    await StorageService.saveState(newState);
  }

  Future<void> _startExam() async {
    if (_state!.currentExam != null) {
      final confirmed = await showDialog<bool>(
        context: context,
        builder: (ctx) => AlertDialog(
          backgroundColor: AppColors.bgMid,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSpacing.lg)),
          title: const Text('Aktive Prüfung abbrechen?', style: TextStyle(color: AppColors.textPrimary)),
          content: const Text(
            'Du hast noch eine laufende Prüfung. Möchtest du diese abbrechen und eine neue starten?',
            style: TextStyle(color: AppColors.textSecondary),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(ctx).pop(false),
              child: const Text('Zurück', style: TextStyle(color: AppColors.textMuted)),
            ),
            TextButton(
              onPressed: () => Navigator.of(ctx).pop(true),
              child: const Text('Neue Prüfung', style: TextStyle(color: AppColors.red)),
            ),
          ],
        ),
      );
      if (confirmed != true) return;
    }

    final ids = generateExam(_state!);
    final newState = QuizState(
      questionStats: _state!.questionStats,
      currentExam: ExamState(
        questionIds: ids,
        currentIndex: 0,
        answers: {},
        score: 0,
      ),
      examHistory: _state!.examHistory,
      allAnswered: _state!.allAnswered,
    );
    await _persist(newState);
    setState(() => _view = 'exam');
  }

  void _resumeExam() {
    setState(() => _view = 'exam');
  }

  Future<void> _handleReset() async {
    await _persist(QuizState.defaultState());
    setState(() => _view = 'profile');
  }

  Future<void> _handleResetFlashcards() async {
    await FlashcardScreen.resetRemovedCards();
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Lernkarten zurückgesetzt')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_loading || _state == null) {
      return Scaffold(
        backgroundColor: AppColors.bgDark,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 40,
                height: 40,
                child: CircularProgressIndicator(
                  strokeWidth: 4,
                  color: AppColors.indigo,
                  backgroundColor: AppColors.indigo.withValues(alpha: 0.2),
                ),
              ),
              SizedBox(height: AppSpacing.lg),
              Text(
                'Lade Prüfungsdaten...',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: AppColors.textMuted,
                    ),
              ),
            ],
          ),
        ),
      );
    }

    switch (_view) {
      case 'exam':
        if (_state!.currentExam != null) {
          return Scaffold(
            body: ExamScreen(
              state: _state!,
              onPersist: _persist,
              onGoHome: () => setState(() => _view = 'home'),
              onExamFinished: () => setState(() => _view = 'result'),
            ),
          );
        }
        WidgetsBinding.instance.addPostFrameCallback((_) {
          setState(() => _view = 'home');
        });
        return const SizedBox.shrink();

      case 'result':
        final lastExam = _state!.examHistory.isNotEmpty
            ? _state!.examHistory.last
            : null;
        if (lastExam == null) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            setState(() => _view = 'home');
          });
          return const SizedBox.shrink();
        }
        return Scaffold(
          body: ResultScreen(
            lastExam: lastExam,
            onNewExam: _startExam,
            onGoHome: () => setState(() => _view = 'home'),
          ),
        );

      case 'stats':
        return Scaffold(
          body: StatsScreen(
            examHistory: _state!.examHistory,
            onGoHome: () => setState(() => _view = 'profile'),
          ),
        );

      case 'glossary':
        return Scaffold(
          body: GlossaryScreen(
            onGoHome: () => setState(() => _view = 'home'),
          ),
        );

      case 'flashcards':
        return Scaffold(
          body: FlashcardScreen(
            onGoHome: () => setState(() => _view = 'home'),
          ),
        );

      case 'profile':
        return Scaffold(
          body: ProfileScreen(
            onGoHome: () => setState(() => _view = 'home'),
            onShowStats: () => setState(() => _view = 'stats'),
            onResetProgress: _handleReset,
            onResetFlashcards: _handleResetFlashcards,
            hasExamHistory: _state!.examHistory.isNotEmpty,
            hasQuizProgress: _state!.questionStats.values.any((s) => s.attempts > 0),
          ),
        );

      default:
        return Scaffold(
          body: HomeScreen(
            state: _state!,
            onStartExam: _startExam,
            onResumeExam: _resumeExam,
            onShowFlashcards: () => setState(() => _view = 'flashcards'),
            onShowGlossary: () => setState(() => _view = 'glossary'),
            onShowProfile: () => setState(() => _view = 'profile'),
          ),
        );
    }
  }
}
