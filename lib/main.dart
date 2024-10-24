import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:points_app/Home_page.dart';
import 'package:points_app/cupit/cupit_stat.dart';

void main() {
  runApp(_pointsCounterState());
}

class _pointsCounterState extends StatelessWidget {
  void addOnePoint() {
    print('add one point');
  }

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context)=> CunteCupit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

