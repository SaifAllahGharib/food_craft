import 'package:food_craft/features/home/presentation/view/home_view.dart';
import 'package:food_craft/features/home/presentation/view/popular_food_details.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final routes = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: PopularFoodDetails.id,
        builder: (context, state) => const PopularFoodDetails(),
      ),
    ],
  );
}
