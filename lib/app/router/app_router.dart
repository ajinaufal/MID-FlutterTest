import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz/core/arguments/quiz_argument.dart';
import 'package:quiz/core/router/router_constant.dart';
import 'package:quiz/core/router/router_observer.dart';
import 'package:quiz/features/home/view/home_view.dart';
import 'package:quiz/features/question/view/question_view.dart';
import 'package:quiz/features/result/view/result_view.dart';
import 'package:quiz/features/topics/view/topics_view.dart';

final routerProvider = Provider.autoDispose(
  (ref) => GoRouter(
    debugLogDiagnostics: true,
    initialLocation: '/',
    observers: [RouterObserver()],
    routes: routes,
    // redirect: notifier.redirect,
  ),
);

List<GoRoute> get routes {
  return [
    GoRoute(
      name: RouterConstant.baseRouter,
      path: '/',
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      name: RouterConstant.topicsRouter,
      path: '/topics',
      builder: (context, state) => const TopicView(),
    ),
    GoRoute(
      name: RouterConstant.questionRouter,
      path: '/question',
      builder: (context, state) => QuestionnView(
        arg: state.extra as QuizArgument,
      ),
    ),
    GoRoute(
      name: RouterConstant.resultRouter,
      path: '/results',
      builder: (context, state) => ResultView(arg: state.extra as QuizArgument),
    ),
  ];
}
