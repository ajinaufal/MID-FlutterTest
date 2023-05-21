import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz/core/domain/entities/quiz_entities.dart';
import 'package:quiz/core/theme/app_color.dart';

class QuestionAnswer extends StatelessWidget {
  const QuestionAnswer({
    super.key,
    required this.answers,
    required this.onTap,
  });

  final List<QuizListAnswerEntities> answers;
  final Function(String? id) onTap;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (context, index) => Container(
        width: double.infinity,
        constraints: BoxConstraints(maxWidth: 250.w),
        child: Consumer(
          builder: (context, ref, child) {
            return ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding:
                    EdgeInsets.symmetric(vertical: 9.0.h, horizontal: 12.0.w),
                backgroundColor: Colors.white,
                disabledBackgroundColor: Colors.grey.shade300,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.r),
                ),
              ),
              onPressed: () => onTap(answers[index].id),
              child: Text(
                answers[index].answer ?? '',
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: AppColor.deepBlue,
                    ),
              ),
            );
          },
        ),
      ),
      separatorBuilder: (context, index) => Container(),
      itemCount: answers.length,
    );
  }
}
