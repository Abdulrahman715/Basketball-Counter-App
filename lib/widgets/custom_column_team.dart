import 'package:basketball_counter/cubit/counter_cubit.dart';
import 'package:basketball_counter/widgets/custom_add_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomColumnTeam extends StatelessWidget {
  const CustomColumnTeam({
    super.key,
    required this.teamName,
    required this.teamIncrement, required this.whatTeamPoints,
  });

  final String teamName;
  final String teamIncrement;
  final int whatTeamPoints;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          teamName,
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),

        Text(
          '$whatTeamPoints',
          style: TextStyle(fontSize: 90, fontWeight: FontWeight.bold),
        ),

        CustomAddButton(
          onPressed: () {
            BlocProvider.of<CounterCubit>(
              context,
            ).incrementPoints(team: teamIncrement, buttonNumber: 1);
          },
          addCount: 'Add 1 Point',
        ),

        SizedBox(height: 20),

        CustomAddButton(
          onPressed: () {
            BlocProvider.of<CounterCubit>(
              context,
            ).incrementPoints(team: teamIncrement, buttonNumber: 2);
          },
          addCount: 'Add 2 Point',
        ),

        SizedBox(height: 20),
        CustomAddButton(
          onPressed: () {
            BlocProvider.of<CounterCubit>(
              context,
            ).incrementPoints(team: teamIncrement, buttonNumber: 3);
          },
          addCount: 'Add 3 Point',
        ),
      ],
    );
  }
}
