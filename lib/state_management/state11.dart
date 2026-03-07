import 'dart:async';

class StreamLogic11 {
  Stream<int> countStream() async* {
    int count = 0;
    while (true) {
      await Future.delayed(const Duration(seconds: 1));
      yield count++;
    }
  }

  Stream<String> statusStream() async* {
    while (true) {
      await Future.delayed(const Duration(seconds: 3));
      yield "App is Running...";
      await Future.delayed(const Duration(seconds: 3));
      yield "Fetching Live Data...";
      await Future.delayed(const Duration(seconds: 3));
      yield "System Online";
    }
  }
}