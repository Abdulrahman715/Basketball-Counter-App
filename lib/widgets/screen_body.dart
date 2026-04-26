import 'package:basketball_counter/cubit/counter_cubit.dart';
import 'package:basketball_counter/cubit/counter_states.dart';
import 'package:basketball_counter/widgets/custom_column_team.dart';
import 'package:basketball_counter/widgets/reset_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenBody extends StatefulWidget {
  const ScreenBody({super.key});

  @override
  State<ScreenBody> createState() => _ScreenBodyState();
}

class _ScreenBodyState extends State<ScreenBody> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, CounterStates>(
      builder: (context, state) {
        return Column(
          children: [
            SizedBox(height: 80),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomColumnTeam(
                  teamName: 'Team A',
                  teamIncrement: 'A',
                  whatTeamPoints: BlocProvider.of<CounterCubit>(
                    context,
                  ).teamAPoints,
                ),

                //!===========================================
                SizedBox(
                  height: 350,
                  child: VerticalDivider(
                    color: const Color.fromARGB(255, 218, 203, 203),
                    thickness: 2,
                    width: 40,
                  ),
                ),

                //!===========================================
                CustomColumnTeam(
                  teamName: 'Team B',
                  teamIncrement: 'B',
                  whatTeamPoints: BlocProvider.of<CounterCubit>(
                    context,
                  ).teamBPoints,
                ),
              ],
            ),

            //!===========================================
            SizedBox(height: 80),

            ResetButton(
              onPressed: () {
                setState(() {
                  BlocProvider.of<CounterCubit>(context).teamAPoints = 0;
                  BlocProvider.of<CounterCubit>(context).teamBPoints = 0;
                });
              },
            ),
          ],
        );
      },
    );
  }
}
