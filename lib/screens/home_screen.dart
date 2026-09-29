import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import '../data/all_questions.dart';
import '../services/exam_modes.dart';
import '../services/storage_service.dart';
import '../services/study_plan.dart';
import '../theme/app_theme.dart';
import 'study_plan_card.dart';

class HomeScreen extends StatelessWidget {
  final QuizState state;
  final StudyPlan? studyPlan;
  final StudyLog studyLog;
  final VoidCallback onEditStudyPlan;
  final VoidCallback onStartExam;
  final VoidCallback onStartExamDay;
  final VoidCallback onStartReview;
  final VoidCallback onResumeExam;
  final VoidCallback onShowFlashcards;
  final VoidCallback onShowGlossary;
  final VoidCallback onShowProfile;

  const HomeScreen({
    super.key,
    required this.state,
    required this.studyPlan,
    required this.studyLog,
    required this.onEditStudyPlan,
    required this.onStartExam,
    required this.onStartExamDay,
    required this.onStartReview,
    required this.onResumeExam,
    required this.onShowFlashcards,
    required this.onShowGlossary,
    required this.onShowProfile,
  });

  String _resumeLabel(ExamState exam) {
    switch (exam.mode) {
      case ExamMode.examDay:
        final left = max(0, (exam.timeLimitSeconds ?? examDaySeconds) - exam.elapsedSeconds);
        return 'Prüfungstag ${exam.examLabel ?? ''} fortsetzen (noch ${(left + 59) ~/ 60} Min.)';
      case ExamMode.review:
        return 'Wiederholung fortsetzen (Frage ${exam.currentIndex + 1}/${exam.questionIds.length})';
      default:
        return 'Prüfung fortsetzen (Frage ${exam.currentIndex + 1}/${exam.questionIds.length})';
    }
  }

  @override
  Widget build(BuildContext context) {
    final uniqueIds = allQuestions.map((q) => q.id).toSet();
    final total = uniqueIds.length;
    final answeredCount = uniqueIds.where((id) {
      final s = state.questionStats[id];
      return s != null && s.attempts > 0;
    }).length;
    final masteredCount = uniqueIds.where((id) {
      final s = state.questionStats[id];
      return s != null && _isQuestionMastered(s);
    }).length;
    final unansweredCount = total - answeredCount;
    final allAnsweredNow = unansweredCount == 0 && answeredCount > 0;
    final reviewCount = reviewCandidateIds(state).length;
    final exam = state.currentExam;
    final tt = Theme.of(context).textTheme;
    return Container(
      decoration: const BoxDecoration(gradient: AppColors.gradientBg),
      child: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: AppSpacing.lg),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppSpacing.lg),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                child: Container(
                  constraints: const BoxConstraints(maxWidth: 520),
                  decoration: BoxDecoration(
                    color: AppColors.cardBg,
                    borderRadius: BorderRadius.circular(AppSpacing.lg),
                    border: Border.all(color: AppColors.indigoBorder.withValues(alpha: 0.15)),
                    boxShadow: const [BoxShadow(color: Color(0x4D000000), blurRadius: 32, offset: Offset(0, 8))],
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg, vertical: AppSpacing.lg),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          onPressed: onShowProfile,
                          icon: const Icon(Icons.person_rounded, color: AppColors.textMuted, size: 28),
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: AppColors.indigo.withValues(alpha: 0.3), width: 2),
                        ),
                        child: ClipOval(child: Image.asset('assets/images/logo.png', fit: BoxFit.cover)),
                      ),
                      const SizedBox(height: AppSpacing.lg),
                      Text('HPP Prüfungstrainer', style: tt.headlineLarge!.copyWith(fontSize: 26, letterSpacing: -0.5)),
                      const SizedBox(height: AppSpacing.xs),
                      Text('$total Fragen · 30 pro Prüfung', style: tt.bodySmall),
                      const SizedBox(height: AppSpacing.lg),
                      const SizedBox(height: AppSpacing.lg),
                      // Progress
                      _ProgressSection(total: total, masteredCount: masteredCount, answeredCount: answeredCount),
                      const SizedBox(height: AppSpacing.lg),
                      StudyPlanCard(
                        plan: studyPlan,
                        status: studyPlan == null ? null : StudyStatus.of(studyPlan!, studyLog, state, DateTime.now()),
                        onTap: onEditStudyPlan,
                      ),
                      const SizedBox(height: AppSpacing.lg),
                      const SizedBox(height: AppSpacing.lg),
                      // Review Banner
                      if (allAnsweredNow)
                        Container(
                          margin: const EdgeInsets.only(bottom: 16),
                          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg, vertical: AppSpacing.lg),
                          decoration: BoxDecoration(
                            color: AppColors.amberSubtle,
                            border: Border.all(color: AppColors.amberBorder),
                            borderRadius: BorderRadius.circular(AppSpacing.lg),
                          ),
                          child: Row(
                            children: [
                              const Text('🔄', style: TextStyle(fontSize: 16)),
                              const SizedBox(width: AppSpacing.lg),
                              Expanded(
                                child: Text(
                                  'Alle Fragen beantwortet! Wiederholungsmodus aktiv (25 falsche + 5 richtige)',
                                  style: tt.bodySmall!.copyWith(fontSize: 13, color: AppColors.amberLight),
                                ),
                              ),
                            ],
                          ),
                        ),
                      // Resume Button
                      if (exam != null)
                        Padding(
                          padding: const EdgeInsets.only(bottom: AppSpacing.lg),
                          child: SizedBox(
                            width: double.infinity,
                            child: TextButton(
                              onPressed: onResumeExam,
                              style: TextButton.styleFrom(
                                backgroundColor: AppColors.greenSubtle,
                                padding: const EdgeInsets.symmetric(vertical: 16),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(AppSpacing.lg),
                                  side: const BorderSide(color: AppColors.greenBorder),
                                ),
                              ),
                              child: Text(
                                _resumeLabel(exam),
                                textAlign: TextAlign.center,
                                style: tt.titleSmall!.copyWith(color: AppColors.greenLight),
                              ),
                            ),
                          ),
                        ),
                      // Start Button
                      SizedBox(
                        width: double.infinity,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [AppColors.green.withAlpha(200).withAlpha(150), AppColors.greenBorder],
                            ),
                            borderRadius: BorderRadius.circular(AppSpacing.lg),
                            boxShadow: const [
                              BoxShadow(color: AppColors.indigoBorder, blurRadius: 16, offset: Offset(0, 4)),
                            ],
                          ),
                          child: TextButton(
                            onPressed: onStartExam,
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSpacing.lg)),
                            ),
                            child: Text(
                              exam != null ? 'Neue Prüfung starten' : 'Prüfung starten',
                              style: tt.labelLarge,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: AppSpacing.lg),
                      _MenuButton(
                        title: 'Prüfungstag simulieren',
                        subtitle: 'Vergangene Prüfung · 28 Fragen · ${examDaySeconds ~/ 60} Min.',
                        prominent: true,
                        onTap: onStartExamDay,
                      ),
                      if (reviewCount > 0) ...[
                        const SizedBox(height: AppSpacing.lg),
                        _MenuButton(
                          title: 'Fehler & Merkliste üben',
                          subtitle: '$reviewCount ${reviewCount == 1 ? 'Frage' : 'Fragen'}',
                          onTap: onStartReview,
                        ),
                      ],
                      const SizedBox(height: AppSpacing.lg),
                      // Lernkarten Button
                      SizedBox(
                        width: double.infinity,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [AppColors.indigoSubtle.withAlpha(150), AppColors.indigoSubtle],
                            ),
                            borderRadius: BorderRadius.circular(AppSpacing.lg),
                            boxShadow: const [
                              BoxShadow(color: AppColors.indigoSubtle, blurRadius: 16, offset: Offset(0, 4)),
                            ],
                          ),
                          child: TextButton(
                            onPressed: onShowFlashcards,
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSpacing.lg)),
                            ),
                            child: Text('Lernkarten', style: tt.labelLarge),
                          ),
                        ),
                      ),
                      const SizedBox(height: AppSpacing.lg),
                      // Glossar Button
                      SizedBox(
                        width: double.infinity,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [AppColors.indigoSubtle.withAlpha(150), AppColors.indigoSubtle],
                            ),
                            borderRadius: BorderRadius.circular(AppSpacing.lg),
                            boxShadow: const [
                              BoxShadow(color: AppColors.indigoSubtle, blurRadius: 16, offset: Offset(0, 4)),
                            ],
                          ),
                          child: TextButton(
                            onPressed: onShowGlossary,
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSpacing.lg)),
                            ),
                            child: Text('Begriffe', style: tt.labelLarge),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  bool _isQuestionMastered(QuestionStats stats) {
    if (stats.attempts == 0) return false;
    return stats.lastCorrect;
  }
}

/// Menü-Knopf mit Untertitel, im Stil der Lernkarten-/Begriffe-Knöpfe; [prominent] in Gold.
class _MenuButton extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  final bool prominent;

  const _MenuButton({required this.title, required this.subtitle, required this.onTap, this.prominent = false});

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    return SizedBox(
      width: double.infinity,
      child: Container(
        decoration: BoxDecoration(
          gradient: prominent
              ? AppColors.gradientGold
              : LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [AppColors.indigoSubtle.withAlpha(150), AppColors.indigoSubtle],
                ),
          borderRadius: BorderRadius.circular(AppSpacing.lg),
          boxShadow: [
            BoxShadow(
              color: prominent ? AppColors.gold.withValues(alpha: 0.3) : AppColors.indigoSubtle,
              blurRadius: 16,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: TextButton(
          onPressed: onTap,
          style: TextButton.styleFrom(
            backgroundColor: Colors.transparent,
            foregroundColor: prominent ? AppColors.onGold : null,
            padding: const EdgeInsets.symmetric(vertical: AppSpacing.lg),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSpacing.lg)),
          ),
          child: Column(
            children: [
              Text(title, style: tt.labelLarge!.copyWith(color: prominent ? AppColors.onGold : null)),
              const SizedBox(height: 2),
              Text(subtitle, style: tt.bodySmall!.copyWith(color: prominent ? AppColors.onGoldMuted : AppColors.textMuted)),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProgressSection extends StatelessWidget {
  final int total;
  final int masteredCount;
  final int answeredCount;

  const _ProgressSection({required this.total, required this.masteredCount, required this.answeredCount});

  @override
  Widget build(BuildContext context) {
    final incorrectCount = answeredCount - masteredCount;
    final correctPct = total > 0 ? masteredCount / total : 0.0;
    final incorrectPct = total > 0 ? incorrectCount / total : 0.0;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg, vertical: AppSpacing.lg * 2),
      decoration: BoxDecoration(color: AppColors.surfaceDark, borderRadius: BorderRadius.circular(AppSpacing.lg)),
      child: Column(
        children: [
          // Stats row
          Row(
            children: [
              _StatItem(label: 'Gesehen', value: '$answeredCount/$total', color: AppColors.tealLighter),
              _StatItem(label: 'Korrekt', value: '$masteredCount', color: AppColors.green),
              _StatItem(label: 'Falsch', value: '$incorrectCount', color: AppColors.red),
            ],
          ),
          const SizedBox(height: AppSpacing.lg),
          // Progress bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppSpacing.xs),
              child: SizedBox(
                height: 10,
                child: Row(
                  children: [
                    if (correctPct > 0)
                      Flexible(
                        flex: (correctPct * 1000).round(),
                        child: Container(color: AppColors.green),
                      ),
                    if (incorrectPct > 0)
                      Flexible(
                        flex: (incorrectPct * 1000).round(),
                        child: Container(color: AppColors.red),
                      ),
                    if (correctPct + incorrectPct < 1)
                      Flexible(
                        flex: ((1 - correctPct - incorrectPct) * 1000).round(),
                        child: Container(color: AppColors.surfaceDark.withValues(alpha: 0.5)),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  final String label;
  final String value;
  final Color color;

  const _StatItem({required this.label, required this.value, required this.color});

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    return Expanded(
      child: Column(
        children: [
          Text(value, style: tt.headlineMedium!.copyWith(color: color)),
          const SizedBox(height: 2),
          Text(label, style: tt.bodySmall!.copyWith(fontSize: 11, color: AppColors.textDim)),
        ],
      ),
    );
  }
}
