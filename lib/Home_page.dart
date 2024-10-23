import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:points_app/cupit/cunter_stat.dart';
import 'package:points_app/cupit/cupit_stat.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  int player1Points = 0;
  int player2Points = 0;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer(builder: (context, State) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('Points Counter'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Team 1',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      const Text(
                        '0',
                        style: TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(8),
                          iconColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Add 1 Point ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          iconColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Add 2 Point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          iconColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Add 3 Point ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 500,
                  child: const VerticalDivider(
                    indent: 50,
                    endIndent: 50,
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Team 2',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      const Text(
                        '0',
                        style: TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(8),
                          iconColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Add 1 Point ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          iconColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Add 2 Point ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          iconColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Add 3 Point ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(8),
                iconColor: Colors.orange,
                minimumSize: const Size(150, 50),
              ),
              onPressed: () {},
              child: const Text(
                'Reset',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      );
    }, listener: (context, State) {
      if (State is CunterStat1) {
        player1Points = BlocProvider.of<CunterCupitStat>(context).player1Points;
      } else {
        player2Points = BlocProvider.of<CunterCupitStat>(context).player2Points;
      }
    });
  }
}
