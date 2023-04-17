import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:project/common/Config.dart';
import 'package:project/models/User.dart';
import 'package:sp_util/sp_util.dart';
import '../flutter_flow_theme.dart';

import '../../index.dart';
import '../../main.dart';
import '../lat_lng.dart';
import '../place.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier, User? user) =>
    GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, _) => LoginPageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => LoginPageWidget(),
          // builder: (context, _) => user == null
          //     ? LoginPageWidget()
          //     : NavBarPage(initialPage: 'page01'),
        ),
        FFRoute(
          name: 'login_page',
          path: '/loginPage',
          builder: (context, params) => LoginPageWidget(),
        ),
        FFRoute(
          name: 'email_Login',
          path: '/emailLogin',
          builder: (context, params) => EmailLoginWidget(),
        ),
        FFRoute(
          name: 'email_register',
          path: '/emailRegister',
          builder: (context, params) => EmailRegisterWidget(),
        ),
        FFRoute(
          name: 'forget',
          path: '/forget',
          builder: (context, params) => ForgetWidget(),
        ),
        FFRoute(
          name: 'page02',
          path: '/page02',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'page02')
              : Page02Widget(),
        ),
        FFRoute(
          name: 'page01',
          path: '/page01',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'page01')
              : Page01Widget(),
        ),
        FFRoute(
          name: 'page03',
          path: '/page03',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'page03')
              : Page03Widget(),
        ),
        FFRoute(
          name: 'page04',
          path: '/page04',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'page04')
              : Page04Widget(),
        ),
        FFRoute(
          name: 'create_room',
          path: '/createRoom',
          builder: (context, params) => CreateRoomWidget(),
        ),
        FFRoute(
          name: 'Registration',
          path: '/registration',
          builder: (context, params) => RegistrationWidget(),
        ),
        FFRoute(
          name: 'choice_tab',
          path: '/choiceTab',
          builder: (context, params) => ChoiceTabWidget(),
        ),
        FFRoute(
          name: 'Room',
          path:
              '/room/:backgroundImg/:charisma:/:charismaShow/:coverImg/:homeownerCountryId/:homeownerId/:id/:lockFlag/:roomCode/:roomName/:voiceChatTagId',
          builder: (context, params) => RoomWidget(),
        ),
        FFRoute(
          name: 'demo',
          path: '/demo',
          builder: (context, params) => DemoWidget(),
        ),
        FFRoute(
          name: 'GameForumDetails',
          path: '/gameForumDetails',
          builder: (context, params) => GameForumDetailsWidget(),
        ),
        FFRoute(
          name: 'GameForumUserDetails',
          path: '/gameForumUserDetails',
          builder: (context, params) => GameForumUserDetailsWidget(),
        ),
        FFRoute(
          name: 'Room_setting',
          path: '/roomSetting',
          builder: (context, params) => RoomSettingWidget(),
        ),
        FFRoute(
          name: 'RoomNotification',
          path: '/roomNotification',
          builder: (context, params) => RoomNotificationWidget(),
        ),
        FFRoute(
          name: 'RoomAdminSettings',
          path: '/roomAdminSettings',
          builder: (context, params) => RoomAdminSettingsWidget(),
        ),
        FFRoute(
          name: 'RoomForbiddenList',
          path: '/roomForbiddenList',
          builder: (context, params) => RoomForbiddenListWidget(),
        ),
        FFRoute(
          name: 'RoomBlockList',
          path: '/roomBlockList',
          builder: (context, params) => RoomBlockListWidget(),
        ),
        FFRoute(
          name: 'GameForumAddInvitation',
          path: '/gameForumAddInvitation',
          builder: (context, params) => GameForumAddInvitationWidget(),
        ),
        FFRoute(
          name: 'MessageNew_Following',
          path: '/messageNewFollowing',
          builder: (context, params) => MessageNewFollowingWidget(),
        ),
        FFRoute(
          name: 'MessageMyVisitor',
          path: '/messageMyVisitor',
          builder: (context, params) => MessageMyVisitorWidget(),
        ),
        FFRoute(
          name: 'MessagePrivate',
          path: '/messagePrivate',
          builder: (context, params) => MessagePrivateWidget(),
        ),
        FFRoute(
          name: 'HomePage',
          path: '/homePage',
          builder: (context, params) => HomePageWidget(),
        ),
        FFRoute(
          name: 'PersonalEdit',
          path: '/personalEdit',
          builder: (context, params) => PersonalEditWidget(),
        ),
        FFRoute(
          name: 'PersonalEditName',
          path: '/personalEditName',
          builder: (context, params) => PersonalEditNameWidget(),
        ),
        FFRoute(
          name: 'PersonalEditSignature',
          path: '/personalEditSignature',
          builder: (context, params) => PersonalEditSignatureWidget(),
        ),
        FFRoute(
          name: 'PersonalFollow',
          path: '/personalFollow',
          builder: (context, params) => PersonalFollowWidget(),
        ),
        FFRoute(
          name: 'PersonalFans',
          path: '/personalFans',
          builder: (context, params) => PersonalFansWidget(),
        ),
        FFRoute(
          name: 'PersonalRecharge',
          path: '/personalRecharge',
          builder: (context, params) => PersonalRechargeWidget(),
        ),
        FFRoute(
          name: 'PersonalFriends',
          path: '/personalFriends',
          builder: (context, params) => PersonalFriendsWidget(),
        ),
        FFRoute(
          name: 'PersonalHistoryBrowseRecords',
          path: '/personalHistoryBrowseRecords',
          builder: (context, params) => PersonalHistoryBrowseRecordsWidget(),
        ),
        FFRoute(
          name: 'PersonalMyLevel',
          path: '/personalMyLevel',
          builder: (context, params) => PersonalMyLevelWidget(),
        ),
        FFRoute(
          name: 'PersonalMyCollection',
          path: '/personalMyCollection',
          builder: (context, params) => PersonalMyCollectionWidget(),
        ),
        FFRoute(
          name: 'PersonalCustomerService',
          path: '/personalCustomerService',
          builder: (context, params) => PersonalCustomerServiceWidget(),
        ),
        FFRoute(
          name: 'PersonalSetting',
          path: '/personalSetting',
          builder: (context, params) => PersonalSettingWidget(),
        ),
        FFRoute(
          name: 'MessageSystemNotion',
          path: '/messageSystemNotion',
          builder: (context, params) => MessageSystemNotionWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      //urlPathStrategy: UrlPathStrategy.path,
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.

    // if (GoRouter.of(this).routerDelegate.matches.length <= 1) {
    //   go('/');
    // } else {
    //   pop();
    // }
    if (GoRouter.of(this).routerDelegate.matches.isEmpty) {
      go('/');
    } else {
      pop();
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(params)
    ..addAll(queryParams)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}
