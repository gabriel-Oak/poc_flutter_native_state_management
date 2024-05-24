import 'dart:async';

class StreamCounterController {
  StreamCounterController();

  int _count = 0;
  final _controller = StreamController<int>();

  Stream<int> get stream => _controller.stream;
  int get count => _count;

  increment() {
    _count++;
    _controller.sink.add(_count);
  }

  decrement() {
    _count--;
    _controller.sink.add(_count);
  }
}
