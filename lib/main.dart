import 'package:flutter/material.dart';
import 'package:theory_flutter/rabbit.dart';
import 'package:theory_flutter/stful.dart';
// import 'package:theory_flutter/stless.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // home: stless(
        //     title: "구멍이 없는 박스로 실험하는 자",
        //     rabbit: Rabbit(name: "개남토끼", state: RabbitState.SLEEP)));
        home: stful(
            title: "구멍이 있는 박스로 실험하는 자",
            rabbit: Rabbit(name: "개남토끼", state: RabbitState.SLEEP)));
  }
}
