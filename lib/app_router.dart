import 'package:go_router/go_router.dart';
import 'package:insta_gallery/constants/app_routes.dart';
import 'package:insta_gallery/screens/chat_screen.dart';
import 'package:insta_gallery/screens/home_screen.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      name: AppRouteNames.home,
      path: AppRoutes.home,
      builder: (context, state) => const HomeScreen(),
      routes: [
        GoRoute(
          name: AppRouteNames.chat,
          path: AppRoutes.chat,
          builder: (context, state) => const ChatScreen(),
        ),
      ],
    ),
  ],
);
