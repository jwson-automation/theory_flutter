import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Rabbit {
  String? _name;
  RabbitState? _state;

  Rabbit({String? name, RabbitState? state}) {
    // if(name != null)
    this._name = name;
    // if(state != null)
    this._state = state;
  }
  get name => _name;
  get state => _state;

  updateState(RabbitState state) {
    this._state = state;
  }
}

enum RabbitState { SLEEP, EAT, WALK, RUN }

// mixin RabbitState { SLEEP, EAT, RUN }