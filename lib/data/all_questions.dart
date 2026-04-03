import '../models/question.dart';
import 'questions_2017.dart';
import 'questions_2018.dart';
import 'questions_2019.dart';
import 'questions_2020.dart';
import 'questions_2021.dart';
import 'questions_2022.dart';
import 'questions_2023.dart';
import 'questions_2024.dart';
import 'questions_2025.dart';

final List<Question> allQuestions = [
  ...questions2017.map(
    (q) => Question(
      id: int.parse('2017${q.id}'),
      exam: q.exam,
      q: q.q,
      options: q.options,
      correct: q.correct,
      explanation: q.explanation,
    ),
  ),
  ...questions2018.map(
    (q) => Question(
      id: int.parse('2018${q.id}'),
      exam: q.exam,
      q: q.q,
      options: q.options,
      correct: q.correct,
      explanation: q.explanation,
    ),
  ),
  ...questions2019.map(
    (q) => Question(
      id: int.parse('2019${q.id}'),
      exam: q.exam,
      q: q.q,
      options: q.options,
      correct: q.correct,
      explanation: q.explanation,
    ),
  ),
  ...questions2020.map(
    (q) => Question(
      id: int.parse('2020${q.id}'),
      exam: q.exam,
      q: q.q,
      options: q.options,
      correct: q.correct,
      explanation: q.explanation,
    ),
  ),
  ...questions2021.map(
    (q) => Question(
      id: int.parse('2021${q.id}'),
      exam: q.exam,
      q: q.q,
      options: q.options,
      correct: q.correct,
      explanation: q.explanation,
    ),
  ),
  ...questions2022.map(
    (q) => Question(
      id: int.parse('2022${q.id}'),
      exam: q.exam,
      q: q.q,
      options: q.options,
      correct: q.correct,
      explanation: q.explanation,
    ),
  ),
  ...questions2023.map(
    (q) => Question(
      id: int.parse('2023${q.id}'),
      exam: q.exam,
      q: q.q,
      options: q.options,
      correct: q.correct,
      explanation: q.explanation,
    ),
  ),
  ...questions2024.map(
    (q) => Question(
      id: int.parse('2024${q.id}'),
      exam: q.exam,
      q: q.q,
      options: q.options,
      correct: q.correct,
      explanation: q.explanation,
    ),
  ),
  ...questions2025.map(
    (q) => Question(
      id: int.parse('2025${q.id}'),
      exam: q.exam,
      q: q.q,
      options: q.options,
      correct: q.correct,
      explanation: q.explanation,
    ),
  ),
];
