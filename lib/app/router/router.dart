import 'package:auto_route/auto_route.dart';

import 'router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page|Screen,Route',
  generateForDir: ['lib/screens'],
)
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: RootRoute.page,
          children: [
            AutoRoute(
              initial: true,
              path: 'home',
              page: HomeRouter.page,
              children: [
                AutoRoute(
                  initial: true,
                  path: '',
                  page: HomeRoute.page,
                ),
              ],
            ),
            AutoRoute(
              path: 'characters',
              page: CharactersRouter.page,
              children: [
                AutoRoute(
                  path: '',
                  page: CharactersRoute.page,
                ),
                AutoRoute(
                  path: ':id',
                  page: CharacterInfoRoute.page,
                )
              ],
            )
          ],
        ),
      ];
}
