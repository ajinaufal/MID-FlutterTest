import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz/core/arguments/quiz_argument.dart';
import 'package:quiz/core/notifier/quiz/quiz_notifier.dart';
import 'package:quiz/core/router/router_constant.dart';
import 'package:quiz/core/theme/app_color.dart';
import 'package:quiz/core/widget/button/custom_button.dart';
import 'package:quiz/core/widget/button/custom_outline_button.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  @override
  void initState() {
    super.initState();
    ref.read(quizNotifierProvider.notifier).getQuizDetail(id: null);
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(quizNotifierProvider);
    return Scaffold(
      body: state.whenOrNull(
        success: (data) => Container(
          width: 1.sw,
          padding: EdgeInsets.all(16.r),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/lamp.png',
                width: 150.r,
                height: 150.r,
              ),
              SizedBox(height: 8.h),
              Text(
                'Flutter Quiz App',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Colors.white,
                    ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8.h),
              Text(
                'Lern Take Quiz Repeat',
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: Colors.white,
                    ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 36.h),
              CustomButton(
                backgroundColor: AppColor.blueSea,
                title: 'PLAY',
                styleTitle: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: Colors.white,
                    ),
                constraints: BoxConstraints(maxWidth: 250.w),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.r),
                ),
                ontap: () {
                  data.shuffle(Random());
                  context.pushNamed(
                    RouterConstant.questionRouter,
                    extra: QuizArgument(
                      index: 0,
                      listQuestion: data.take(5).toList(),
                    ),
                  );
                },
              ),
              SizedBox(height: 16.h),
              CustomOutlineButton(
                title: 'TOPICS',
                styleTitle: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: AppColor.blueSea,
                    ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.r),
                ),
                constraints: BoxConstraints(maxWidth: 250.w),
                side: const BorderSide(color: AppColor.blueSea),
                onTap: () => context.pushNamed(RouterConstant.topicsRouter),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
