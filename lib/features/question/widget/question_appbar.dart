import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz/core/router/router_constant.dart';
import 'package:quiz/features/question/provider/notifier/question_provider.dart';

class QuestionAppbar extends ConsumerWidget implements PreferredSizeWidget {
  const QuestionAppbar({
    super.key,
    required this.timer,
  });

  final Timer timer;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
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
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56.0.h);
}
