import 'package:go_router/go_router.dart';
import 'package:insta_gallery/constants/app_routes.dart';
import 'package:insta_gallery/screens/home_screen.dart';
import 'package:insta_gallery/screens/instagram_downloader_screen.dart';
import 'package:insta_gallery/screens/youtube_downloader_screen.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      name: AppRouteNames.home,
      path: AppRoutes.home,
      builder: (context, state) => const HomeScreen(),
      routes: [
        GoRoute(
          name: AppRouteNames.instagramDownloader,
          path: AppRoutes.instagramDownloader,
          builder: (context, state) => const InstagramDownloaderScreen(),
        ),
        GoRoute(
          name: AppRouteNames.youtubeDownloader,
          path: AppRoutes.youtubeDownloader,
          builder: (context, state) => const YoutubeDownloaderScreen(),
        ),
      ],
    ),
  ],
);
