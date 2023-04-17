import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project/index.dart';

class MyRouterDelegate extends RouterDelegate<String>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<String> {
  final GlobalKey<NavigatorState> navigatorKey;
  final bool value;

  MyRouterDelegate(this.value) : navigatorKey = GlobalKey<NavigatorState>();

  @override
  String get currentConfiguration => '$value';

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      onPopPage: (route, result) {
        return route.didPop(result);
      },
      pages: [
        if (value == true)
          MaterialPage(child: HomePageWidget())
        else if (value == false)
          MaterialPage(child: LoginPageWidget())
      ],
    );
  }

  @override
  Future<void> setNewRoutePath(String configuration) async {
    // This method is not required, since we only support one configuration
    // and it is already handled in the build method.
    return;
  }
}

class MyRouteInformationParser extends RouteInformationParser<String> {
  @override
  Future<String> parseRouteInformation(
      RouteInformation routeInformation,
      ) =>
      // Use [SynchronousFuture] so that the initial url is processed
  // synchronously and remove unwanted initial animations on deep-linking
  SynchronousFuture<String>(routeInformation.location!);

  /// for use by the Router architecture as part of the RouteInformationParser
  @override
  RouteInformation restoreRouteInformation(String configuration) =>
      RouteInformation(location: configuration.toString());
}
