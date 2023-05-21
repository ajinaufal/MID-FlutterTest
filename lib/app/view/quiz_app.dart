import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz/app/router/app_router.dart';
import 'package:quiz/core/theme/app_theme.dart';

class QuizApp extends ConsumerStatefulWidget {
  const QuizApp({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _QuizAppState();
}

class _QuizAppState extends ConsumerState<QuizApp> {
  @override
  Widget build(BuildContext context) {
    final router = ref.watch(routerProvider);
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: router,
        title: 'Quiz',
        theme: AppTheme.lightMode,
      ),
    );
  }
}
