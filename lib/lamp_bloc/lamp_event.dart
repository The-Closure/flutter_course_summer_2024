// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'lamp_bloc.dart';

@immutable
sealed class LampEvent {}

class OnOrOffLampEvent extends LampEvent {
  final bool lampStaus;
  OnOrOffLampEvent({
    required this.lampStaus,
  });
}
