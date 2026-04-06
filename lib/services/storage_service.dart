import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class QuizState {
  Map<int, QuestionStats> questionStats;
  ExamState? currentExam;
  List<ExamRecord> examHistory;

  QuizState({
    required this.questionStats,
    this.currentExam,
    required this.examHistory,
  });

  factory QuizState.defaultState() => QuizState(
        questionStats: {},
        currentExam: null,
        examHistory: [],
      );

  Map<String, dynamic> toJson() => {
        'questionStats': questionStats.map(
          (k, v) => MapEntry(k.toString(), v.toJson()),
        ),
        'currentExam': currentExam?.toJson(),
        'examHistory': examHistory.map((e) => e.toJson()).toList(),
      };

  factory QuizState.fromJson(Map<String, dynamic> json) {
    final statsMap = <int, QuestionStats>{};
    if (json['questionStats'] != null) {
      (json['questionStats'] as Map<String, dynamic>).forEach((k, v) {
        statsMap[int.parse(k)] = QuestionStats.fromJson(v);
      });
    }
    return QuizState(
      questionStats: statsMap,
      currentExam: json['currentExam'] != null
          ? ExamState.fromJson(json['currentExam'])
          : null,
      examHistory: (json['examHistory'] as List?)
              ?.map((e) => ExamRecord.fromJson(e))
              .toList() ??
          [],
    );
  }
}

class QuestionStats {
  int attempts;
  int correctCount;
  bool lastCorrect;
  int correctStreak;

  QuestionStats({this.attempts = 0, this.correctCount = 0, this.lastCorrect = false, this.correctStreak = 0});

  Map<String, dynamic> toJson() => {
        'attempts': attempts,
        'correctCount': correctCount,
        'lastCorrect': lastCorrect,
        'correctStreak': correctStreak,
      };

  factory QuestionStats.fromJson(Map<String, dynamic> json) {
    final attempts = json['attempts'] ?? 0;
    final correctCount = json['correctCount'] ?? 0;

    // Migration: infer lastCorrect from old data when field is missing
    final bool lastCorrect;
    if (json.containsKey('lastCorrect')) {
      lastCorrect = json['lastCorrect'] ?? false;
    } else {
      // Old mastery logic: 1 attempt + 1 correct, or 3+ attempts + 2+ correct
      lastCorrect = (attempts == 1 && correctCount == 1) ||
          (attempts >= 3 && correctCount >= 2);
    }

    // Migration: assume stable streak if mastered under old logic
    final int correctStreak;
    if (json.containsKey('correctStreak')) {
      correctStreak = json['correctStreak'] ?? 0;
    } else {
      correctStreak = lastCorrect ? 2 : 0;
    }

    return QuestionStats(
      attempts: attempts,
      correctCount: correctCount,
      lastCorrect: lastCorrect,
      correctStreak: correctStreak,
    );
  }
}

class ExamState {
  List<int> questionIds;
  int currentIndex;
  Map<int, AnswerRecord> answers;
  int score;
  int elapsedSeconds;

  ExamState({
    required this.questionIds,
    this.currentIndex = 0,
    required this.answers,
    this.score = 0,
    this.elapsedSeconds = 0,
  });

  Map<String, dynamic> toJson() => {
        'questionIds': questionIds,
        'currentIndex': currentIndex,
        'answers':
            answers.map((k, v) => MapEntry(k.toString(), v.toJson())),
        'score': score,
        'elapsedSeconds': elapsedSeconds,
      };

  factory ExamState.fromJson(Map<String, dynamic> json) {
    final answersMap = <int, AnswerRecord>{};
    if (json['answers'] != null) {
      (json['answers'] as Map<String, dynamic>).forEach((k, v) {
        answersMap[int.parse(k)] = AnswerRecord.fromJson(v);
      });
    }
    return ExamState(
      questionIds: (json['questionIds'] as List).cast<int>(),
      currentIndex: json['currentIndex'] ?? 0,
      answers: answersMap,
      score: json['score'] ?? 0,
      elapsedSeconds: json['elapsedSeconds'] ?? 0,
    );
  }
}

class AnswerRecord {
  final List<int> selected;
  final bool correct;

  AnswerRecord({required this.selected, required this.correct});

  Map<String, dynamic> toJson() => {
        'selected': selected,
        'correct': correct,
      };

  factory AnswerRecord.fromJson(Map<String, dynamic> json) {
    final raw = json['selected'];
    final List<int> sel;
    if (raw is List) {
      sel = raw.cast<int>();
    } else if (raw is int) {
      sel = [raw];
    } else {
      sel = [];
    }
    return AnswerRecord(selected: sel, correct: json['correct'] ?? false);
  }
}

class ExamRecord {
  final String date;
  final int score;
  final int total;
  final int elapsedSeconds;

  ExamRecord({required this.date, required this.score, required this.total, this.elapsedSeconds = 0});

  Map<String, dynamic> toJson() => {
        'date': date,
        'score': score,
        'total': total,
        'elapsedSeconds': elapsedSeconds,
      };

  factory ExamRecord.fromJson(Map<String, dynamic> json) => ExamRecord(
        date: json['date'] ?? '',
        score: json['score'] ?? 0,
        total: json['total'] ?? 0,
        elapsedSeconds: json['elapsedSeconds'] ?? 0,
      );
}

class StorageService {
  static const _key = 'hpp-quiz-state';

  static Future<QuizState> loadState() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final raw = prefs.getString(_key);
      if (raw != null) {
        return QuizState.fromJson(jsonDecode(raw));
      }
    } catch (e) {
      // ignore
    }
    return QuizState.defaultState();
  }

  static Future<void> saveState(QuizState state) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_key, jsonEncode(state.toJson()));
    } catch (e) {
      // ignore
    }
  }
}
