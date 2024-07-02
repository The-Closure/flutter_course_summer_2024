// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class CounterState {}

class CounterInitialState extends CounterState {
  // int initialCounter;
  // CounterInitialState({
  //   this.initialCounter = 0,
  // });
}

class CounterHasIncreased extends CounterState {
  int increasedCounterValue;
  CounterHasIncreased({
    required this.increasedCounterValue,
  });
}

class CounterHasDecreased extends CounterState {
  int decreasedCounterValue;
  CounterHasDecreased({
    required this.decreasedCounterValue,
  });
}
