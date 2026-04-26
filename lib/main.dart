import 'package:basketball_counter/cubit/counter_cubit.dart';
import 'package:basketball_counter/widgets/home_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BasketBallApp());
}

class BasketBallApp extends StatelessWidget {
  const BasketBallApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(debugShowCheckedModeBanner: false, home: HomeBody()),
    );
  }
}
