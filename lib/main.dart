import 'package:counter_bloc/logic/blocs/counter_bloc/counter_bloc.dart';
import 'package:counter_bloc/logic/cubits/counter_cubit/counter_cubit.dart';
import 'package:counter_bloc/presentation/router/app_router.dart';
import 'package:counter_bloc/presentation/screens/counter_cubit_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const Counter());
}

class Counter extends StatelessWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppRouter _appRouter = AppRouter();
    return MultiBlocProvider(
      providers: [
        BlocProvider<CounterBloc>(
            create: (BuildContext context) => CounterBloc()),
        BlocProvider<CounterCubit>(
            create: (BuildContext context) => CounterCubit())
      ],
      child: MaterialApp(
        onGenerateRoute: _appRouter.onGenerateRoute,
        initialRoute: CounterCubitScreen.id,
      ),
    );
  }
}
