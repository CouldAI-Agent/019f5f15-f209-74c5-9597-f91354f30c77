import 'package:flutter/material.dart';

class HeadshotScreen extends StatelessWidget {
  const HeadshotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Headshot Sensitivity'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildCard(
            title: 'Camera Sensitivity (Free Look)',
            content: '3rd Person Camera: 120%\nCamera: 110%\n1st Person Camera: 105%',
          ),
          const SizedBox(height: 16),
          _buildCard(
            title: 'Camera Sensitivity (For Aiming)',
            content: '3rd Person No Scope: 115%\n1st Person No Scope: 105%\nRed Dot, Holographic, Aim Assist: 60%\n2x Scope: 35%\n3x Scope, Win94: 25%\n4x Scope, VSS: 18%\n6x Scope: 14%\n8x Scope: 12%',
          ),
          const SizedBox(height: 16),
          _buildCard(
            title: 'ADS Sensitivity',
            content: '3rd Person No Scope: 110%\n1st Person No Scope: 100%\nRed Dot, Holographic, Aim Assist: 55%\n2x Scope: 30%\n3x Scope, Win94: 22%\n4x Scope, VSS: 16%\n6x Scope: 10%\n8x Scope: 8%',
          ),
          const SizedBox(height: 16),
          _buildCard(
            title: 'Gyroscope Sensitivity (Headshot Focus)',
            content: '3rd Person No Scope: 300%\n1st Person No Scope: 300%\nRed Dot, Holographic, Aim Assist: 300%\n2x Scope: 250%\n3x Scope, Win94: 200%\n4x Scope, VSS: 150%\n6x Scope: 80%\n8x Scope: 60%',
          ),
          const SizedBox(height: 16),
          _buildCard(
            title: 'Pro Tip',
            content: 'For consistent headshots on the A70s display, always aim slightly higher than chest level while using these gyro settings. Keep your crosshair placement at head height at all times.',
            isProTip: true,
          ),
        ],
      ),
    );
  }

  Widget _buildCard({required String title, required String content, bool isProTip = false}) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: isProTip ? Colors.redAccent.withOpacity(0.1) : const Color(0xFF1E2128),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  isProTip ? Icons.lightbulb : Icons.track_changes,
                  color: isProTip ? Colors.redAccent : Colors.blueAccent,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: isProTip ? Colors.redAccent : Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const Divider(color: Colors.white24, height: 24),
            Text(
              content,
              style: const TextStyle(
                fontSize: 15,
                color: Colors.white70,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
