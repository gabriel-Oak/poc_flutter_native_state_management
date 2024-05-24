import 'package:demo/pages/stream_counter/stream_counter_content.dart';
import 'package:demo/pages/stream_counter/stream_counter_controller.dart';
import 'package:flutter/material.dart';

import 'stream_counter_provider.dart';

class StreamCounterPage extends StatelessWidget {
  const StreamCounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamCounterProvider<StreamCounterController>(
      controller: StreamCounterController(),
      child: const StreamCounterContent(),
    );
  }
}
