import 'package:flutter/material.dart';

class StreamCounterProvider<C> extends InheritedWidget {
  const StreamCounterProvider(
      {super.key, required super.child, required this.controller});

  final C controller;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;

  static C of<C>(BuildContext context) {
    final provider =
        context.getInheritedWidgetOfExactType<StreamCounterProvider<C>>();
    if (provider != null) return provider.controller;
    throw Exception('$C not found in the tree');
  }
}
