import 'package:flutter/material.dart';
import 'bloc.dart';

class Provider extends InheritedWidget {
  final bloc = Bloc();

  Provider({required super.key, required super.child});

  @override
  bool updateShouldNotify(_) => true;

  static Bloc of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Provider>()!.bloc;
  }
}
