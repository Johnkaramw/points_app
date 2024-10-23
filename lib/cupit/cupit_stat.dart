import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:points_app/cupit/cunter_stat.dart';

class CunterCupitStat extends Cubit<CunterStat> {
  CunterCupitStat() : super(CunterStat1());

  int player1Points = 0;
  int player2Points = 0;
  void player1cunter( {required String Tame,required int Numberpointbotton}) {
    if (Tame == '1') {
      player1Points += Numberpointbotton;
      emit(CunterStat1());
    } else {
      player2Points += Numberpointbotton;
      emit(CunterStat2());
    }
  }
}
