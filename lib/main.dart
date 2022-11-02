import 'package:flutter/material.dart';
import 'package:provider_why/presentation/router.dart';

void main() {
  runApp(const MyApp());
  //여기에 provider를 세팅하면 새로 그려질 때마다 랜더링된다.
  //모든 화면에 써야 하는 거면 여기에 provider를 쓰는 게 맞다.
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      /// go router 사용
      routerConfig: router,
      title: 'Flutter Demo',
    );
  }
}
