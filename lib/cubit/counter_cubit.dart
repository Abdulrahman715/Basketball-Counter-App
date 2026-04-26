import 'package:basketball_counter/cubit/counter_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates> {
  
  CounterCubit() : super(InitialCounter());

  int teamAPoints = 0;
  int teamBPoints = 0;


  void incrementPoints({required String team, required int buttonNumber}) {
    if (team == 'A') {
      teamAPoints += buttonNumber;
      emit(CounterAIncerments());
    }else{
      teamBPoints += buttonNumber;
      emit(CounterBIncerments());
    }
  }
}
