import 'package:counter_bloc/business_logic/blocs/counter_bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBlocScreen extends StatelessWidget {
  const CounterBlocScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterBloc, CounterBlocState>(
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
            heroTag: 'Back',
            onPressed: () => Navigator.pop(context),
            child: const Icon(Icons.arrow_back),
          ),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  heroTag: 'Add',
                  onPressed: () {
                    context.read<CounterBloc>().add(CounterIncrementValue());
                  },
                  child: const Icon(Icons.add),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: BlocBuilder<CounterBloc, CounterBlocState>(
                    builder: (context, state) {
                      return Text('Bloc state: ${state.counterValue}');
                    },
                  ),
                ),
                FloatingActionButton(
                  heroTag: 'Remove',
                  onPressed: () {
                    context.read<CounterBloc>().add(CounterDecrementValue());
                  },
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
