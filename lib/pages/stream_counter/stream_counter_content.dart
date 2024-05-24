import 'package:demo/pages/stream_counter/stream_counter_controller.dart';
import 'package:demo/pages/stream_counter/stream_counter_provider.dart';
import 'package:flutter/material.dart';

class StreamCounterContent extends StatelessWidget {
  const StreamCounterContent({super.key});

  @override
  Widget build(BuildContext context) {
    final controller =
        StreamCounterProvider.of<StreamCounterController>(context);
    return StreamBuilder(
      stream: controller.stream,
      builder: (context, snapshot) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Stream Counter'),
          ),
          body: Center(
            child: Text('Inherited Counter: ${controller.count}'),
          ),
          floatingActionButton: Wrap(
            direction: Axis.vertical,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () => controller.increment(),
                heroTag: 'counter1',
                child: const Icon(Icons.add),
              ),
              Container(height: 16),
              FloatingActionButton(
                mini: true,
                backgroundColor: Colors.red,
                onPressed: () => controller.decrement(),
                heroTag: 'counter2',
                child: const Icon(Icons.remove),
              ),
            ],
          ),
        );
      },
    );
  }
}
