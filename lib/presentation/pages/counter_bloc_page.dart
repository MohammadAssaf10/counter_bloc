import 'package:counter_bloc/business_logic/blocs/counter_bloc/counter_bloc.dart';
import 'package:counter_bloc/presentation/screens/counter_bloc_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBlocPage extends StatelessWidget {
  static const String id = 'CounterBlocPage';

  const CounterBlocPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterBloc(),
      child: const CounterBlocScreen(),
    );
  }
}
