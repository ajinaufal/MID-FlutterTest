import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz/core/arguments/quiz_argument.dart';
import 'package:quiz/core/router/router_constant.dart';
import 'package:quiz/core/theme/app_color.dart';
import 'package:quiz/features/result/widget/circular_result.dart';
import 'package:quiz/features/result/widget/question_result.dart';

class ResultView extends ConsumerStatefulWidget {
  const ResultView({
    super.key,
    required this.arg,
  });

  final QuizArgument arg;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ResultViewState();
}

class _ResultViewState extends ConsumerState<ResultView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            if (context.canPop()) {
              context.pushNamed(RouterConstant.baseRouter);
            }
          },
          icon: Icon(
            Platform.isIOS
                ? Icons.arrow_back_ios_new_rounded
                : Icons.arrow_back_rounded,
            color: Colors.white,
            size: 20.r,
          ),
        ),
        title: Text(
          'Your Score',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Colors.white,
              ),
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        width: 1.sw,
        child: ListView(
          padding: EdgeInsets.all(16.r),
          shrinkWrap: true,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircularResult(listQuiz: widget.arg.listQuestion),
                SizedBox(height: 16.h),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        vertical: 9.0.h, horizontal: 12.0.w),
                    backgroundColor: AppColor.blueSea,
                    disabledBackgroundColor: Colors.grey.shade300,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Share your score',
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
                SizedBox(height: 16.h),
                Text(
                  'Your Report',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Colors.white,
                      ),
                ),
                SizedBox(height: 16.h),
              ],
            ),
            QuestionResult(listQuiz: widget.arg.listQuestion)
          ],
        ),
      ),
    );
  }
}
