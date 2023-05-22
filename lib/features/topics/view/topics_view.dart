import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz/core/arguments/quiz_argument.dart';
import 'package:quiz/core/notifier/quiz/quiz_notifier.dart';
import 'package:quiz/core/router/router_constant.dart';
import 'package:quiz/core/theme/app_color.dart';
import 'package:quiz/features/topics/provider/notifier/topic_notifier.dart';

class TopicView extends ConsumerStatefulWidget {
  const TopicView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TopicViewState();
}

class _TopicViewState extends ConsumerState<TopicView> {
  @override
  void initState() {
    super.initState();
    ref.read(topicNotifierProvider.notifier).getTopicDetail();
  }

  @override
  Widget build(BuildContext context) {
    final stateTopic = ref.watch(topicNotifierProvider);

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
        title: Text(
          'Topics',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Colors.white,
              ),
        ),
        centerTitle: true,
      ),
      body: stateTopic.whenOrNull(
        success: (data) => ListView.separated(
          shrinkWrap: true,
          padding: EdgeInsets.all(16.r),
          itemBuilder: (context, index) => Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              color: AppColor.blue,
            ),
            child: ListTile(
              selectedTileColor: Colors.amber,
              title: Text(
                data[index].topic ?? '',
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: Colors.white,
                    ),
              ),
              trailing: Icon(
                Icons.arrow_right,
                size: 24.r,
                color: Colors.white,
              ),
              onTap: () async {
                final id = data[index].id;
                final quiz =
                    await ref.read(quizNotifierProvider.notifier).getSearchQuiz(
                          id: id,
                        );
                quiz.shuffle(Random());
                if (context.mounted) {
                  context.pushNamed(
                    RouterConstant.questionRouter,
                    extra: QuizArgument(
                      index: 0,
                      listQuestion: quiz.take(5).toList(),
                    ),
                  );
                }
              },
            ),
          ),
          separatorBuilder: (context, index) => SizedBox(height: 8.h),
          itemCount: data.length,
        ),
      ),
    );
  }
}
