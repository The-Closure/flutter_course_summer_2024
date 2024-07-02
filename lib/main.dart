import 'package:bloc_session_one/counter_bloc/counter_bloc.dart';
import 'package:bloc_session_one/counter_bloc/counter_event.dart';
import 'package:bloc_session_one/counter_bloc/counter_state.dart';
import 'package:bloc_session_one/lamp_bloc/lamp_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => CounterBloc(),
        ),
        BlocProvider(
          create: (_) => LampBloc()
            ..add(
              OnOrOffLampEvent(
                lampStaus: true,
              ),
            ),
        )
      ],
      child: const MaterialApp(
        home: LampPage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(IncreaseCounterEvent());
            },
            child: const Icon(
              Icons.add,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(DecreaseCounterEvent());
            },
            child: const Icon(
              Icons.remove,
            ),
          ),
        ],
      ),
      body: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          if (state is CounterHasIncreased) {
            return Center(
              child: Text(
                state.increasedCounterValue.toString(),
                style: const TextStyle(
                  fontSize: 100,
                ),
              ),
            );
          } else if (state is CounterHasDecreased) {
            return Center(
              child: Text(
                state.decreasedCounterValue.toString(),
                style: const TextStyle(
                  fontSize: 100,
                ),
              ),
            );
          }
          // } else if (state is CounterInitialState) {
          //   return Center(
          //     child: Text(
          //       state.initialCounter.toString(),
          //       style: const TextStyle(
          //         fontSize: 100,
          //       ),
          //     ),
          //   );
          // } else {
          //   return const Center(
          //     child: CircularProgressIndicator(),
          //   );
          // }
          else {
            return const Center(
              child: Text(
                '0',
                style: TextStyle(
                  fontSize: 100,
                ),
              ),
            );
          }
        },
      ),
    );
  }
}

class LampPage extends StatelessWidget {
  const LampPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<LampBloc, LampState>(
          builder: (context, state) {
            if (state is LampChanged) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      color: state.newLampState
                          ? Colors.yellow
                          : Colors.grey.shade300,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.read<LampBloc>().add(
                            OnOrOffLampEvent(
                              lampStaus: state.newLampState,
                            ),
                          );
                    },
                    child: const Text(
                      'on/off lamp',
                    ),
                  ),
                ],
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
            //  else if (state is LampIsOff) {
            //   return Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Container(
            //         width: 300,
            //         height: 300,
            //         decoration: BoxDecoration(
            //           color: state.isOff ? Colors.grey.shade300 : Colors.yellow,
            //           shape: BoxShape.circle,
            //         ),
            //       ),
            //       const SizedBox(
            //         height: 30,
            //       ),
            //       ElevatedButton(
            //         onPressed: () {
            //           context.read<LampBloc>().add(
            //                 OnOrOffLampEvent(
            //                   lampStaus: state.isOff,
            //                 ),
            //               );
            //         },
            //         child: const Text(
            //           'on/off lamp',
            //         ),
            //       ),
            //     ],
            //   );
            // } else {
            //   return Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       const CircularProgressIndicator(),
            //       const SizedBox(
            //         height: 30,
            //       ),
            //       ElevatedButton(
            //         onPressed: () {
            //           context.read<LampBloc>().add(
            //                 OnOrOffLampEvent(
            //                   lampStaus: false,
            //                 ),
            //               );
            //         },
            //         child: const Text(
            //           'on/off lamp',
            //         ),
            //       ),
            //     ],
            //   );
            // }
          },
        ),
      ),
    );
  }
}
