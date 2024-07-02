import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'lamp_event.dart';
part 'lamp_state.dart';

class LampBloc extends Bloc<LampEvent, LampState> {
  LampBloc() : super(LampInitial()) {
    on<OnOrOffLampEvent>((event, emit) {
        emit(LampChanged(newLampState: !event.lampStaus));
    });
  }
}
