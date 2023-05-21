import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz/core/arguments/quiz_argument.dart';
import 'package:quiz/core/data/models/response/quiz_model.dart';
import 'package:quiz/core/router/router_constant.dart';
import 'package:quiz/core/theme/app_color.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
            StreamBuilder<QuerySnapshot<QuizModel>>(
              stream: FirebaseFirestore.instance
                  .collection('quiz')
                  .withConverter<QuizModel>(
                    fromFirestore: (snapshot, _) =>
                        QuizModel.fromJson(snapshot.data()!),
                    toFirestore: (quiz, _) => quiz.toJson(),
                  )
                  .snapshots(),
              builder: (context, snapshot) {
                final document = (snapshot.data?.docs ?? []);

                if (snapshot.hasError) {
                  return const Text('Something went wrong');
                }

                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Text("Loading");
                }

                document.shuffle(Random());
                final data = document
                    .take(5)
                    .map(
                      (e) => e.data().toEntity().copyWith(
                            id: e.id,
                          ),
                    )
                    .toList();
                return Container(
                  width: double.infinity,
                  constraints: BoxConstraints(maxWidth: 250.w),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          vertical: 9.0.h, horizontal: 12.0.w),
                      backgroundColor: AppColor.blueSea,
                      disabledBackgroundColor: Colors.grey.shade300,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.r),
                      ),
                    ),
                    onPressed: () {
                      context.pushNamed(
                        RouterConstant.questionRouter,
                        extra: QuizArgument(
                          index: 0,
                          listQuestion: data,
                        ),
                      );
                    },
                    child: Text(
                      'PLAY',
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            color: Colors.white,
                          ),
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 16.h),
            Container(
              width: double.infinity,
              constraints: BoxConstraints(maxWidth: 250.w),
              child: OutlinedButton(
                onPressed: () => context.pushNamed(RouterConstant.topicsRouter),
                style: OutlinedButton.styleFrom(
                  padding:
                      EdgeInsets.symmetric(vertical: 9.0.h, horizontal: 12.0.w),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.r),
                  ),
                  side: const BorderSide(color: AppColor.blueSea),
                ),
                child: Text(
                  'TOPICS',
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: AppColor.blueSea,
                      ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
