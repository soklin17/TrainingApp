// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i7;

import '../../module/home/screen/detail_video.dart' as _i4;
import '../../module/home/screen/home_page.dart' as _i1;
import '../../module/home/screen/setting.dart' as _i5;
import '../../module/home/screen/video_screen.dart' as _i3;
import '../../module/profile/screen/profile_screen.dart' as _i6;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    VideoRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    ProfileRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    VideoRoute.name: (routeData) {
      final args = routeData.argsAs<VideoRouteArgs>(
          orElse: () => const VideoRouteArgs());
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.VideoPage(key: args.key, id: args.id, name: args.name));
    },
    VideoDetailPage.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<VideoDetailPageArgs>(
          orElse: () => VideoDetailPageArgs(
              profileId: queryParams.optInt('profileId'),
              fullName: queryParams.optString('fullName')));
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.VideoDetailPage(
              key: args.key,
              profileId: args.profileId,
              fullName: args.fullName));
    },
    SettingRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.SettingPage());
    },
    ProfileRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.ProfilePage());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(HomeRoute.name, path: '/', children: [
          _i2.RouteConfig(VideoRouter.name,
              path: 'videos-listing',
              parent: HomeRoute.name,
              children: [
                _i2.RouteConfig(VideoRoute.name,
                    path: '', parent: VideoRouter.name),
                _i2.RouteConfig(VideoDetailPage.name,
                    path: 'video-detail', parent: VideoRouter.name),
                _i2.RouteConfig(SettingRouter.name,
                    path: 'setting', parent: VideoRouter.name)
              ]),
          _i2.RouteConfig(ProfileRouter.name,
              path: 'profile',
              parent: HomeRoute.name,
              children: [
                _i2.RouteConfig(ProfileRoute.name,
                    path: '', parent: ProfileRouter.name),
                _i2.RouteConfig(SettingRouter.name,
                    path: 'setting', parent: ProfileRouter.name)
              ])
        ])
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i2.PageRouteInfo<void> {
  const HomeRoute({List<_i2.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class VideoRouter extends _i2.PageRouteInfo<void> {
  const VideoRouter({List<_i2.PageRouteInfo>? children})
      : super(VideoRouter.name,
            path: 'videos-listing', initialChildren: children);

  static const String name = 'VideoRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class ProfileRouter extends _i2.PageRouteInfo<void> {
  const ProfileRouter({List<_i2.PageRouteInfo>? children})
      : super(ProfileRouter.name, path: 'profile', initialChildren: children);

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [_i3.VideoPage]
class VideoRoute extends _i2.PageRouteInfo<VideoRouteArgs> {
  VideoRoute({_i7.Key? key, String? id, String? name})
      : super(VideoRoute.name,
            path: '', args: VideoRouteArgs(key: key, id: id, name: name));

  static const String name = 'VideoRoute';
}

class VideoRouteArgs {
  const VideoRouteArgs({this.key, this.id, this.name});

  final _i7.Key? key;

  final String? id;

  final String? name;

  @override
  String toString() {
    return 'VideoRouteArgs{key: $key, id: $id, name: $name}';
  }
}

/// generated route for
/// [_i4.VideoDetailPage]
class VideoDetailPage extends _i2.PageRouteInfo<VideoDetailPageArgs> {
  VideoDetailPage({_i7.Key? key, int? profileId, String? fullName})
      : super(VideoDetailPage.name,
            path: 'video-detail',
            args: VideoDetailPageArgs(
                key: key, profileId: profileId, fullName: fullName),
            rawQueryParams: {'profileId': profileId, 'fullName': fullName});

  static const String name = 'VideoDetailPage';
}

class VideoDetailPageArgs {
  const VideoDetailPageArgs({this.key, this.profileId, this.fullName});

  final _i7.Key? key;

  final int? profileId;

  final String? fullName;

  @override
  String toString() {
    return 'VideoDetailPageArgs{key: $key, profileId: $profileId, fullName: $fullName}';
  }
}

/// generated route for
/// [_i5.SettingPage]
class SettingRouter extends _i2.PageRouteInfo<void> {
  const SettingRouter() : super(SettingRouter.name, path: 'setting');

  static const String name = 'SettingRouter';
}

/// generated route for
/// [_i6.ProfilePage]
class ProfileRoute extends _i2.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: '');

  static const String name = 'ProfileRoute';
}
