import 'package:counter_newpp/core/theme/app_theme.dart';
import 'package:counter_newpp/logic/cubit/theme_cubit/theme_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'presentation/routes.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return CounterApp();
  }
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> with WidgetsBindingObserver {
  // @override
  // void initState() {
  //   WidgetsBinding.instance.addObserver(this);
  //   super.initState();
  // }

  // @override
  // void didChangePlatformBrightness() {
  //   context.read<ThemeCubit>().updateAppTheme();
  //   super.didChangePlatformBrightness();
  // }

  // @override
  // void dispose() {
  //   WidgetsBinding.instance.removeObserver(this);
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRouter.counter,
      onGenerateRoute: AppRouter.onGenerateRoute,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,

      // context.select((ThemeCubit themecubit) => themecubit.state.themeMode),
    ); // THIS ACCESS OF CUBIT ONLY UPDATE WHEN APP RESTART TO OBSEVER THE STATE OF SYSTEM NEED TO USE OBSERVER AS MIXIN
  }
}
