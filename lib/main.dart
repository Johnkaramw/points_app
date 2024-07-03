import 'package:flutter/material.dart';

void main() {
  runApp(PointApp());
}

class PointApp extends StatefulWidget {
  @override
  State<PointApp> createState() => _PointAppState();
}

class _PointAppState extends State<PointApp> {
  int player1Points = 0;
  int player2Points = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 200, 212, 226),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: const Color.fromARGB(255, 200, 212, 226),
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: const Color.fromARGB(233, 217, 217, 255),
        appBar: AppBar(
          title: const Text(
            'Points Counter',
            style: TextStyle(
              fontSize: 30,
              color: Color.fromARGB(255, 255, 0, 76),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  PlayerColumn(
                    playerName: 'Player 1',
                    points: player1Points,
                    onAddPoint: () {
                      setState(() {
                        player1Points++;
                      });
                    },
                    onAddTwoPoints: () {
                      setState(() {
                        player1Points += 2;
                      });
                    },
                    onAddThreePoints: () {
                      setState(() {
                        player1Points += 3;
                      });
                    },
                    onRemovePoint: () {
                      if (player1Points > 0) {
                        setState(() {
                          player1Points--;
                        });
                      }
                    },
                  ),
                  const SizedBox(width: 20),
                  PlayerColumn(
                    playerName: 'Player 2',
                    points: player2Points,
                    onAddPoint: () {
                      setState(() {
                        player2Points++;
                      });
                    },
                    onAddTwoPoints: () {
                      setState(() {
                        player2Points += 2;
                      });
                    },
                    onAddThreePoints: () {
                      setState(() {
                        player2Points += 3;
                      });
                    },
                    onRemovePoint: () {
                      if (player2Points > 0) {
                        setState(() {
                          player2Points--;
                        });
                      }
                    },
                  ),
                ],
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    player1Points = 0;
                    player2Points = 0;
                  });
                },
                child: const Text('Reset'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PlayerColumn extends StatelessWidget {
  final String playerName;
  final int points;
  final VoidCallback onAddPoint;
  final VoidCallback onAddTwoPoints;
  final VoidCallback onAddThreePoints;
  final VoidCallback onRemovePoint;

  const PlayerColumn({
    required this.playerName,
    required this.points,
    required this.onAddPoint,
    required this.onAddTwoPoints,
    required this.onAddThreePoints,
    required this.onRemovePoint,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(
            playerName,
            style: const TextStyle(fontSize: 30),
          ),
          Text(
            '$points',
            style: const TextStyle(fontSize: 80),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: onAddPoint,
            child: const Text('Add Point'),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: onAddTwoPoints,
            child: const Text('Add 2 Points'),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: onAddThreePoints,
            child: const Text('Add 3 Points'),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: onRemovePoint,
            child: const Text('Remove 1 Point'),
          ),
        ],
      ),
    );
  }
}
