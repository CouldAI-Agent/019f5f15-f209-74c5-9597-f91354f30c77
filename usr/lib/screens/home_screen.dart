import 'package:flutter/material.dart';
import 'sensitivity_screen.dart';
import 'control_screen.dart';
import 'display_tips_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SAMSUNG A70s BGMI HUB'),
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            int crossAxisCount = constraints.maxWidth > 600 ? 3 : 1;
            return GridView.count(
              crossAxisCount: crossAxisCount,
              padding: const EdgeInsets.all(16),
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: constraints.maxWidth > 600 ? 1.5 : 2.5,
              children: [
                _buildMenuCard(
                  context,
                  title: 'Pro Sensitivity',
                  subtitle: 'Optimized for A70s LCD Touch',
                  icon: Icons.tune,
                  color: Colors.blueAccent,
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SensitivityScreen()),
                  ),
                ),
                _buildMenuCard(
                  context,
                  title: 'Control Layouts',
                  subtitle: 'Best 3-Finger & 4-Finger Claw',
                  icon: Icons.gamepad,
                  color: Colors.greenAccent,
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ControlScreen()),
                  ),
                ),
                _buildMenuCard(
                  context,
                  title: 'Display Optimization',
                  subtitle: 'Max performance on A70s LCD',
                  icon: Icons.phone_android,
                  color: Colors.orangeAccent,
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DisplayTipsScreen()),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildMenuCard(
    BuildContext context, {
    required String title,
    required String subtitle,
    required IconData icon,
    required Color color,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, size: 40, color: color),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white.withOpacity(0.7),
                      ),
                    ),
                  ],
                ),
              ),
              Icon(Icons.arrow_forward_ios, color: Colors.white.withOpacity(0.3)),
            ],
          ),
        ),
      ),
    );
  }
}
