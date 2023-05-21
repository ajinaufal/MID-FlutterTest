import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz/core/domain/entities/quiz_entities.dart';

class QuestionResult extends StatelessWidget {
  const QuestionResult({
    super.key,
    required this.listQuiz,
  });

  final List<QuizEntities> listQuiz;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (context, index) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            listQuiz[index].question ?? '',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.white,
                ),
          ),
          answer(indexQuestion: index, context: context),
        ],
      ),
      separatorBuilder: (context, index) => SizedBox(height: 8.h),
      itemCount: listQuiz.length,
    );
  }

  Widget answer({
    required int indexQuestion,
    required BuildContext context,
  }) {
    final listAnswer = (listQuiz[indexQuestion].listAnswer ?? []);
    final answerSelected = listQuiz[indexQuestion].selectedAnswer;

    final answers = listAnswer.map(
      (answer) {
        if (answer.isAnswer ?? false) {
          return answer.copyWith(correct: true);
        } else if (answerSelected == answer.id || answerSelected == null) {
          return answer.copyWith(correct: false);
        }
      },
    ).toList();
    return SizedBox(
      width: .9.sw,
      child: Wrap(
        children: List.generate(
          answers.length,
          (index) {
            if (answers[index] == null) return const SizedBox();
            return Row(
              children: [
                (answers[index]?.correct ?? false)
                    ? Icon(
                        Icons.done,
                        size: 16.r,
                        color: Colors.green,
                      )
                    : Icon(
                        Icons.close,
                        size: 16.r,
                        color: Colors.red,
                      ),
                SizedBox(width: 4.w),
                Text(
                  answers[index]?.answer ?? '',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.white,
                      ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
