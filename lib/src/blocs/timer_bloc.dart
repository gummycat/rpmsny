import 'package:rxdart/rxdart.dart';
import 'dart:async';

class TimerBloc {
  BehaviorSubject<DateTime> tic;
  Timer timer;

  TimerBloc() {
    tic = BehaviorSubject<DateTime>();

    timer = Timer.periodic(Duration(seconds: 1), (_) => tic.add(DateTime.now()));
  }

  void dispose() {
    timer.cancel();
    tic.close();
  }
}