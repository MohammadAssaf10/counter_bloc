import 'package:counter_bloc/presentation/screens/counter_bloc_screen.dart';
import 'package:counter_bloc/presentation/screens/counter_cubit_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case CounterCubitScreen.id:
        return MaterialPageRoute(
          builder: (_) => const CounterCubitScreen(),
        );

      case CounterBlocScreen.id:
        return MaterialPageRoute(
          builder: (_) => const CounterBlocScreen(),
        );

      default:
        return unDefinedRoute();
    }
  }

  Route unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text('No Route Founded'),
              ),
              body: const Center(
                child: Text('No Route Founded'),
              ),
            ));
  }
}
