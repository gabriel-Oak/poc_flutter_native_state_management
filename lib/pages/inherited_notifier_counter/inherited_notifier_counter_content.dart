import 'package:flutter/material.dart';
import 'inherited_notifier_counter_controller.dart';

class InheritedNotifierCounterContent extends StatelessWidget {
  const InheritedNotifierCounterContent({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = InheritedNotifierCounterController.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inherited Counter'),
      ),
      body: Center(
        child: Text('Inherited Counter: ${controller.counter}'),
      ),
      floatingActionButton: Wrap(
        direction: Axis.vertical,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () => controller.increment(1),
            heroTag: 'counter1',
            child: const Icon(Icons.add),
          ),
          Container(height: 16),
          FloatingActionButton(
            mini: true,
            backgroundColor: Colors.red,
            onPressed: () => controller.decrement(1),
            heroTag: 'counter2',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
