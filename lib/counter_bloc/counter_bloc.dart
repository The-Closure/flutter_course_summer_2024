import 'package:bloc_session_one/counter_bloc/counter_event.dart';
import 'package:bloc_session_one/counter_bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counter = 0;
  CounterBloc() : super(CounterInitialState()) {
    on<IncreaseCounterEvent>((event, emit) {
      counter++;
      emit(
        CounterHasIncreased(
          increasedCounterValue: counter,
        ),
      );
    });

    on<DecreaseCounterEvent>((event, emit) {
      counter--;
      emit(
        CounterHasDecreased(
          decreasedCounterValue: counter,
        ),
      );
    });
  }
}
