import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:provider_why/presentation/main/main_screen.dart';
import 'package:provider_why/presentation/main/main_view_model.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        //이 화면에만 viewModel이 필요하면 여기만 세팅하면 된다.
        return ChangeNotifierProvider(
          create: (_) => MainViewModel(),
          child: const MainScreen(),
        );
      },
    ),
  ],
);
