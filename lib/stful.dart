import 'dart:async';

import 'package:flutter/material.dart';
import 'package:theory_flutter/rabbit.dart';

class stful extends StatefulWidget {
  String? title;
  Rabbit? rabbit;
  stful({this.title, this.rabbit});

  @override
  State<stful> createState() => _stfulState();
}

class _stfulState extends State<stful> {
  @override
  void initState() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      int index = timer.tick % 4;
      setState(() {
        switch (index) {
          case 0:
            widget.rabbit!.updateState(RabbitState.RUN);
            break;
          case 1:
            widget.rabbit!.updateState(RabbitState.WALK);
            break;
          case 2:
            widget.rabbit!.updateState(RabbitState.EAT);
            break;
          case 3:
            widget.rabbit!.updateState(RabbitState.SLEEP);
            break;
        }
        print(widget.rabbit!.state);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title!)),
      body: Container(
          child: Center(
        child: Text(
          widget.rabbit!.state.toString(),
          style: TextStyle(fontSize: 20),
        ),
      )),
    );
  }
}
