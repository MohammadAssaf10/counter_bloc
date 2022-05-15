import 'package:counter_bloc/business_logic/cubits/counter_cubit/counter_cubit.dart';
import 'package:counter_bloc/presentation/pages/counter_bloc_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubitScreen extends StatelessWidget {
  const CounterCubitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterCubitState>(
      listener: (context, state) {
        if (state.isIncrement == true) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Incremented'),
              duration: Duration(milliseconds: 300),
            ),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Decremented'),
              duration: Duration(milliseconds: 300),
            ),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            heroTag: 'Next',
            onPressed: () => Navigator.pushNamed(context, CounterBlocPage.id),
            child: const Icon(Icons.arrow_forward),
          ),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  heroTag: 'Add',
                  onPressed: () => context.read<CounterCubit>().increment(),
                  child: const Icon(Icons.add),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: BlocBuilder<CounterCubit, CounterCubitState>(
                    builder: (context, state) {
                      return Text('Cubit state: ${state.counterValue}');
                    },
                  ),
                ),
                FloatingActionButton(
                  heroTag: 'Remove',
                  onPressed: () => context.read<CounterCubit>().decrement(),
                  child: const Icon(Icons.remove),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
