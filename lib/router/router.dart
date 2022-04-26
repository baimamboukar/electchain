import 'package:auto_route/auto_route.dart';
import 'package:electchain/app/views/dashboard.dart';

import '../app/views/views.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'router',
  routes: <AutoRoute>[
    AutoRoute(page: Home, initial: true, guards: []),
    AutoRoute(page: Dashboard, path: '/dashboard', guards: []),
  ],
)
class $AppRouter {}
