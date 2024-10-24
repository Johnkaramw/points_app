import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:points_app/cupit/cunter_stat.dart';

class CunteCupit extends Cubit<CunterStat> {
  CunteCupit() : super(CunterStat1());

  int player1Points = 0;
  int player2Points = 0;
  void playercunterteam(
      {required String Tame, required int Numberpointbotton}) {
    if (Tame == 'A') {
      player1Points += Numberpointbotton;
      emit(CunterStat1());
    } else {
      player2Points += Numberpointbotton;
      emit(CunterStat2());

    }
  }
}
