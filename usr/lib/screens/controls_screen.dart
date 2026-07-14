import 'package:flutter/material.dart';

class ControlsScreen extends StatelessWidget {
  const ControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Control Layouts'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          Text(
            'Recommended Layouts for Galaxy A70s',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          _ControlCard(
            title: '4-Finger Claw (Recommended)',
            description:
                'Provides the best balance of movement, aiming, and firing. Ideal for the large 6.7-inch display of the A70s.',
            tips: [
              'Top Left: Fire buttons',
              'Top Right: ADS / Scope',
              'Bottom Left: Joystick for movement',
              'Bottom Right: Crouch, Prone, Jump, Reload',
            ],
          ),
          SizedBox(height: 16),
          _ControlCard(
            title: '3-Finger Claw (Beginner Friendly)',
            description:
                'Good starting point if you are transitioning from 2 thumbs.',
            tips: [
              'Top Left: Fire button',
              'Bottom Left: Joystick',
              'Bottom Right: Aiming, Scope, Crouch, Jump',
            ],
          ),
          SizedBox(height: 16),
          _ControlCard(
            title: 'General Control Tips',
            description: 'Optimize your layout for comfort and speed.',
            tips: [
              'Increase button size to 150-180% for primary actions.',
              'Reduce transparency of buttons you have memorized.',
              'Keep the joystick size medium (around 80-100%).',
            ],
          ),
        ],
      ),
    );
  }
}

class _ControlCard extends StatelessWidget {
  final String title;
  final String description;
  final List<String> tips;

  const _ControlCard({
    required this.title,
    required this.description,
    required this.tips,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.orangeAccent,
              ),
            ),
            const SizedBox(height: 8),
            Text(description),
            const SizedBox(height: 12),
            ...tips.map((tip) => Padding(
                  padding: const EdgeInsets.only(bottom: 6.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('• ',
                          style: TextStyle(
                              color: Colors.orangeAccent,
                              fontWeight: FontWeight.bold)),
                      Expanded(child: Text(tip)),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
