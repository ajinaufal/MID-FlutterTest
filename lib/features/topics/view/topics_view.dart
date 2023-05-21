import 'dart:io';
import 'dart:math';
import 'dart:developer' as dev;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz/core/arguments/quiz_argument.dart';
import 'package:quiz/core/data/models/response/quiz_model.dart';
import 'package:quiz/core/data/models/response/topic_model.dart';
import 'package:quiz/core/router/router_constant.dart';
import 'package:quiz/core/theme/app_color.dart';

class TopicsView extends ConsumerStatefulWidget {
  const TopicsView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TopicsViewState();
}

class _TopicsViewState extends ConsumerState<TopicsView> {
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
        title: Text(
          'Topics',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Colors.white,
              ),
        ),
        centerTitle: true,
      ),
      body: StreamBuilder<QuerySnapshot<TopicModel>>(
          stream: FirebaseFirestore.instance
              .collection('topic')
              .withConverter(
                fromFirestore: (snapshot, options) =>
                    TopicModel.fromJson(snapshot.data()!),
                toFirestore: (topic, _) => topic.toJson(),
              )
              .snapshots(),
          builder: (context, snapshotTopic) {
            final document = snapshotTopic.data?.docs ?? [];
            return ListView.separated(
              shrinkWrap: true,
              padding: EdgeInsets.all(16.r),
              itemBuilder: (context, index) {
                final topic =
                    document[index].data().toEntity(document[index].id);
                dev.log(topic.topic.toString());
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    color: AppColor.blue,
                  ),
                  child: StreamBuilder<QuerySnapshot<QuizModel>>(
                      stream: FirebaseFirestore.instance
                          .collection('quiz')
                          .where('topic', isEqualTo: topic.id)
                          .withConverter(
                            fromFirestore: (snapshot, options) =>
                                QuizModel.fromJson(snapshot.data()!),
                            toFirestore: (quiz, _) => quiz.toJson(),
                          )
                          .snapshots(),
                      builder: (context, snapshot) {
                        return ListTile(
                          selectedTileColor: Colors.amber,
                          title: Text(
                            document[index].data().topic ?? '',
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge
                                ?.copyWith(
                                  color: Colors.white,
                                ),
                          ),
                          trailing: Icon(
                            Icons.arrow_right,
                            size: 24.r,
                            color: Colors.white,
                          ),
                          onTap: () {
                            final document = (snapshot.data?.docs ?? []);
                            document.shuffle(Random());
                            final data = document
                                .take(5)
                                .map(
                                  (e) => e.data().toEntity().copyWith(
                                        id: e.id,
                                      ),
                                )
                                .toList();
                            context.pushNamed(
                              RouterConstant.questionRouter,
                              extra: QuizArgument(
                                index: 0,
                                listQuestion: data,
                              ),
                            );
                          },
                        );
                      }),
                );
              },
              separatorBuilder: (context, index) => SizedBox(height: 8.h),
              itemCount: document.length,
            );
          }),
    );
  }
}
