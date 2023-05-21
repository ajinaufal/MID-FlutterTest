import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz/core/domain/entities/quiz_entities.dart';

class CircularResult extends ConsumerWidget {
  const CircularResult({
    super.key,
    required this.listQuiz,
  });

  final List<QuizEntities> listQuiz;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rvalue = _resultValue();
    return SizedBox(
      width: 106.r,
      height: 106.r,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 100.r,
              height: 100.r,
              child: CircularProgressIndicator(
                backgroundColor: Colors.red,
                color: Colors.green,
                value: rvalue / listQuiz.length,
                strokeWidth: 6,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              '$rvalue / ${listQuiz.length}',
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
        ],
      ),
    );
  }

  int _resultValue() {
    final List<QuizListAnswerEntities> correct = [];
    listQuiz.map((question) {
      final selected = question.selectedAnswer;
      final listAnswer = (question.listAnswer ?? []);
      listAnswer.map((answer) {
        if (answer.id == selected) {
          if (answer.isAnswer ?? false) {
            correct.add(answer);
          }
        }
      }).toList();
    }).toList();

    return correct.length;
  }
}
