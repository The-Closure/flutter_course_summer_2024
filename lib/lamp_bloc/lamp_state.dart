// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'lamp_bloc.dart';

@immutable
sealed class LampState {}

final class LampInitial extends LampState {}

class LampChanged extends LampState {
  final bool newLampState;
  LampChanged({
    required this.newLampState,
  });
}
