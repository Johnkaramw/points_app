import 'package:flutter/material.dart';

void main() {
  runApp(PointApp());
}

class PointApp extends StatefulWidget {
  @override
  State<PointApp> createState() => _PointAppState();
}

class _PointAppState extends State<PointApp> {
  int tadrosPoints = 0;
  int johnPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(233, 217, 217, 255),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 200, 212, 226),
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
                  _buildPlayerColumn('John', tadrosPoints, () {
                    setState(() {
                      tadrosPoints++;
                    });
                  }, () {
                    setState(() {
                      tadrosPoints += 2;
                    });
                  }, () {
                    setState(() {
                      tadrosPoints += 3;
                    });
                  }, () {
                    if (tadrosPoints >= 3) {
                      setState(() {
                        tadrosPoints--;
                      });
                    }
                  }),
                  const SizedBox(width: 20),
                  _buildPlayerColumn('Bavly', johnPoints, () {
                    setState(() {
                      johnPoints++;
                    });
                  }, () {
                    setState(() {
                      johnPoints += 2;
                    });
                  }, () {
                    setState(() {
                      johnPoints += 3;
                    });
                  }, () {
                    if (johnPoints >= 3) {
                      setState(() {
                        johnPoints--;
                      });
                    }
                  }),
                ],
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    tadrosPoints = 0;
                    johnPoints = 0;
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

  Widget _buildPlayerColumn(
      String playerName,
      int points,
      VoidCallback onPressed1,
      VoidCallback onPressed2,
      VoidCallback onPressed3,
      VoidCallback onPressedDecrement) {
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
            onPressed: onPressed1,
            child: const Text('Add Point'),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: onPressed2,
            child: const Text('Add 2 Points'),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: onPressed3,
            child: const Text('Add 3 Points'),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: onPressedDecrement,
            child: const Text('Remove 1 Point'),
          ),
        ],
      ),
    );
  }
}
