import 'package:counter_bloc/presentation/pages/counter_bloc_page.dart';
import 'package:counter_bloc/presentation/pages/counter_cubit_page.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const Counter());
}

class Counter extends StatelessWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: CounterCubitPage.id,
      routes: {
        CounterBlocPage.id: (context) => const CounterBlocPage(),
        CounterCubitPage.id: (context) => const CounterCubitPage(),
      },
    );
  }
}
