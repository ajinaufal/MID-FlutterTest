import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz/core/domain/entities/quiz_entities.dart';

class QuestionQuiz extends StatelessWidget {
  const QuestionQuiz({
    super.key,
    required this.index,
    required this.questions,
  });

  final int index;
  final List<QuizEntities> questions;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.r),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        children: [
          Text(
            questions[index].question ?? '',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          questions[index].image != null
              ? SizedBox(height: 16.h)
              : const SizedBox(),
          chaceImage(image: questions[index].image),
        ],
      ),
    );
  }

  Widget chaceImage({String? image}) {
    if (image == null) return const SizedBox();
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16.r),
          child: Image.network(
            image,
            width: 200.r,
            height: 200.r,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
