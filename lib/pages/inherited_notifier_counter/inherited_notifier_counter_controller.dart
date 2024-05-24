import 'package:flutter/material.dart';

class InheritedNotifierCounterController
    extends InheritedNotifier<ValueNotifier<int>> {
  InheritedNotifierCounterController({
    super.key,
    required super.child,
    required int initialValue,
  }) : super(notifier: ValueNotifier(initialValue));

  static InheritedNotifierCounterController of(BuildContext context) {
    final controller = context.dependOnInheritedWidgetOfExactType<
        InheritedNotifierCounterController>();
    if (controller == null) {
      throw StateError(
          'Could no find an instance of $InheritedNotifierCounterController in the tree');
    }
    return controller;
  }

  int get counter => notifier!.value;

  increment(int amount) {
    notifier!.value += amount;
  }

  decrement(int amount) {
    notifier!.value -= amount;
  }
}
