import 'package:auto_route/auto_route.dart';
import 'package:home_work/src/module/home/screen/search_screen.dart';
import 'package:home_work/src/module/home/screen/video_screen.dart';
import 'package:home_work/src/module/profile/screen/profile_screen.dart';

import '../../module/home/screen/detail_video.dart';
import '../../module/home/screen/home_page.dart';
import '../../module/home/screen/setting.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: "/",
      page: HomePage,
      initial: true,
      children: [
        AutoRoute(
          path: "video",
          name: "VideoRouter",
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              page: VideoPage,
              path: '',
            ),
            AutoRoute(
              page: VideoDetailPage,
              path: 'video-detail',
              name: "VideoDetailPage",
            ),
            AutoRoute(
              path: 'setting',
              page: SettingPage,
              name: "SettingRouter",
            ),
            AutoRoute(
              path: 'search',
              page: SearchScreen,
              name: "SearchRouter",
            ),
          ],
        ),

        AutoRoute(
          path: "profile",
          name: "ProfileRouter",
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              page: ProfilePage,
              path: '',
            ),
            AutoRoute(
              path: 'setting',
              page: SettingPage,
              name: "SettingRouter",
            ),
          ],
        ),
        // AutoRoute(
        //   path: 'setting',
        //   page: SettingPage,
        //   name: "SettingRouter",
        // ),
      ],
    ),
  ],
)
class $AppRouter {}
