import 'package:flutter/material.dart';
import 'router/routing.dart';
import 'package:provider/provider.dart';
import './provider/tab_index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => CounterModel(), // 创建数据模型实例
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
          home: const Routing(),
        ));
  }
}
