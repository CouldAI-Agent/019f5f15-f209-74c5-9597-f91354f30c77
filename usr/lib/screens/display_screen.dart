import 'package:flutter/material.dart';

class DisplayScreen extends StatelessWidget {
  const DisplayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('A70s Display Optimization'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          Text(
            'Samsung Galaxy A70s Super AMOLED Guide',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          _DisplayTipCard(
            title: 'BGMI Graphics Settings',
            content: '• Graphics: Smooth\n'
                '• Frame Rate: Extreme (60fps)\n'
                '• Style: Colorful (Makes enemies easier to spot on AMOLED)\n'
                '• Anti-aliasing: Disable (Saves battery and reduces heating)\n'
                '• Auto-adjust Graphics: Disable',
          ),
          SizedBox(height: 16),
          _DisplayTipCard(
            title: 'Phone Display Settings',
            content:
                '• Screen Mode: Vivid (Settings > Display > Screen Mode)\n'
                '• Eye Comfort Shield: Disable while gaming to avoid yellow tint.\n'
                '• Brightness: Keep it around 70-80%. Avoid 100% to prevent quick heating and battery drain.',
          ),
          SizedBox(height: 16),
          _DisplayTipCard(
            title: 'Touch Sensitivity',
            content:
                'If you are using a thick screen protector, enable "Touch Sensitivity" in your phone\\'s Display settings for better responsiveness during gameplay.',
          ),
          SizedBox(height: 16),
          _DisplayTipCard(
            title: 'Device Care & Performance',
            content:
                '• Use Samsung Game Plugins (Game Booster Plus) to prioritize performance.\n'
                '• Clear background apps before starting BGMI to free up RAM.\n'
                '• The Snapdragon 675 is capable, but keeping the phone cool is key to maintaining 60fps.',
          ),
        ],
      ),
    );
  }
}

class _DisplayTipCard extends StatelessWidget {
  final String title;
  final String content;

  const _DisplayTipCard({required this.title, required this.content});

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
                color: Colors.lightBlueAccent,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              content,
              style: const TextStyle(height: 1.4),
            ),
          ],
        ),
      ),
    );
  }
}
