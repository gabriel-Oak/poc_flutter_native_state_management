import 'package:demo/pages/inherited_notifier_counter/inherited_notifier_counter_content.dart';
import 'package:flutter/material.dart';

import 'inherited_notifier_counter_controller.dart';

class InheritedNotifierCounterPage extends StatelessWidget {
  const InheritedNotifierCounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return InheritedNotifierCounterController(
      initialValue: 0,
      child: const InheritedNotifierCounterContent(),
    );
  }
}
