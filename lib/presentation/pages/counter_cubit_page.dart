import 'package:counter_bloc/business_logic/cubits/counter_cubit/counter_cubit.dart';
import 'package:counter_bloc/presentation/screens/counter_cubit_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubitPage extends StatelessWidget {
  static const String id = 'CounterCubitPage';
  const CounterCubitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: const CounterCubitScreen(),
    );
  }
}
