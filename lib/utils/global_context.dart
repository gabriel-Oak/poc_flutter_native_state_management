import 'package:demo/utils/layout_breakpoints.dart';
import 'package:flutter/material.dart';

class GlobalContext extends InheritedWidget {
  const GlobalContext({
    super.key,
    required super.child,
    required this.title,
  });

  final String title;
  final breakpoints = const LayoutBreakpoints();

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;

  static GlobalContext of(BuildContext context) {
    final globalContext =
        context.getInheritedWidgetOfExactType<GlobalContext>();
    if (globalContext != null) return globalContext;
    throw Exception('GlobalContext not found in the tree');
  }
}
