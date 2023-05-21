import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz/core/arguments/quiz_argument.dart';
import 'package:quiz/core/router/router_constant.dart';
import 'package:quiz/features/question/provider/notifier/question_notifier.dart';
import 'package:quiz/features/question/widget/question_answer.dart';
import 'package:quiz/features/question/widget/question_quiz.dart';

class QuestionnView extends ConsumerStatefulWidget {
  const QuestionnView({
    super.key,
    required this.arg,
  });

  final QuizArgument arg;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _QuestionnViewState();
}

class _QuestionnViewState extends ConsumerState<QuestionnView> {
  late Timer timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            if (context.canPop()) context.pop();
          },
          icon: Icon(
            Platform.isIOS
                ? Icons.arrow_back_ios_new_rounded
                : Icons.arrow_back_rounded,
            color: Colors.white,
            size: 20.r,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              timer.cancel();
              context.pushNamed(RouterConstant.baseRouter);
            },
            child: Text(
              'Exit',
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
          SizedBox(width: 16.w),
        ],
        centerTitle: true,
        title: Text(
          'Quiz Page',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Colors.white,
              ),
        ),
        toolbarHeight: 50.h,
        flexibleSpace: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            LinearProgressIndicator(
              value: ref.watch(progressTime),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(bottom: 16.h, right: 16.w, left: 16.w),
        shrinkWrap: true,
        children: [
          SizedBox(height: 16.h),
          _question(),
          SizedBox(height: 8.h),
          _answer(),
        ],
      ),
    );
  }

  void _startTimer() {
    const duration = Duration(seconds: 30);
    const interval = Duration(milliseconds: 100);

    int totalTicks = duration.inMilliseconds ~/ interval.inMilliseconds;
    int currentTick = 0;

    timer = Timer.periodic(interval, (Timer t) {
      ref.read(progressTime.notifier).update(
            (state) => 0.0 + (currentTick / totalTicks),
          );

      if (currentTick >= totalTicks) {
        t.cancel();
        context.pushNamed(
          RouterConstant.questionRouter,
          extra: QuizArgument(
            index: (widget.arg.index ?? 0) + 1,
            listQuestion: widget.arg.listQuestion,
          ),
        );
      } else {
        currentTick++;
      }
    });
  }

  Widget _question() {
    final questions = widget.arg.listQuestion;
    final index = widget.arg.index;

    if (index == null) return const SizedBox();

    return QuestionQuiz(index: index, questions: questions);
  }

  Widget _answer() {
    final dataQuestion = widget.arg.listQuestion;
    final indexQuestion = widget.arg.index;

    if (indexQuestion == null) return const SizedBox();

    final dataAnswer = dataQuestion[indexQuestion].listAnswer;

    if (dataAnswer == null) return const SizedBox();

    return QuestionAnswer(
      answers: dataAnswer,
      onTap: (String? id) {
        timer.cancel();
        if (indexQuestion < (dataQuestion.length - 1)) {
          context.pushNamed(
            RouterConstant.questionRouter,
            extra: QuizArgument(
              index: (widget.arg.index ?? 0) + 1,
              listQuestion: dataQuestion.map((e) {
                if (e.id == dataQuestion[indexQuestion].id) {
                  return e.copyWith(selectedAnswer: id);
                }
                return e;
              }).toList(),
            ),
          );
        } else {
          context.pushNamed(
            RouterConstant.resultRouter,
            extra: QuizArgument(
              index: (widget.arg.index ?? 0),
              listQuestion: dataQuestion.map((e) {
                if (e.id == dataQuestion[indexQuestion].id) {
                  return e.copyWith(selectedAnswer: id);
                }
                return e;
              }).toList(),
            ),
          );
        }
      },
    );
  }
}
