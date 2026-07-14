import 'package:flutter/material.dart';

class SensitivityScreen extends StatelessWidget {
  const SensitivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Best BGMI Sensitivity'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          _SectionTitle(title: 'Camera Sensitivity (Free Look)'),
          _SensitivityItem(name: '3rd Person Camera', value: '115% - 120%'),
          _SensitivityItem(name: 'Camera (Parachuting)', value: '110% - 120%'),
          _SensitivityItem(name: '1st Person Camera', value: '105% - 115%'),
          SizedBox(height: 24),
          _SectionTitle(title: 'Camera Sensitivity'),
          _SensitivityItem(name: '3rd Person No Scope', value: '115% - 125%'),
          _SensitivityItem(name: '1st Person No Scope', value: '105% - 115%'),
          _SensitivityItem(name: 'Red Dot, Holographic', value: '55% - 65%'),
          _SensitivityItem(name: '2x Scope', value: '35% - 40%'),
          _SensitivityItem(name: '3x Scope', value: '25% - 30%'),
          _SensitivityItem(name: '4x Scope', value: '15% - 20%'),
          _SensitivityItem(name: '6x Scope', value: '10% - 15%'),
          _SensitivityItem(name: '8x Scope', value: '8% - 12%'),
          SizedBox(height: 24),
          _SectionTitle(title: 'ADS Sensitivity'),
          _SensitivityItem(name: '3rd Person No Scope', value: '110% - 120%'),
          _SensitivityItem(name: '1st Person No Scope', value: '100% - 110%'),
          _SensitivityItem(name: 'Red Dot, Holographic', value: '55% - 65%'),
          _SensitivityItem(name: '2x Scope', value: '35% - 40%'),
          _SensitivityItem(name: '3x Scope', value: '25% - 30%'),
          _SensitivityItem(name: '4x Scope', value: '15% - 20%'),
          _SensitivityItem(name: '6x Scope', value: '10% - 15%'),
          _SensitivityItem(name: '8x Scope', value: '8% - 12%'),
          SizedBox(height: 24),
          _SectionTitle(title: 'Gyroscope Sensitivity (If Used)'),
          _SensitivityItem(name: '3rd Person No Scope', value: '280% - 300%'),
          _SensitivityItem(name: '1st Person No Scope', value: '280% - 300%'),
          _SensitivityItem(name: 'Red Dot, Holographic', value: '300%'),
          _SensitivityItem(name: '2x Scope', value: '300%'),
          _SensitivityItem(name: '3x Scope', value: '240% - 250%'),
          _SensitivityItem(name: '4x Scope', value: '200% - 210%'),
          _SensitivityItem(name: '6x Scope', value: '60% - 70%'),
          _SensitivityItem(name: '8x Scope', value: '30% - 40%'),
        ],
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final String title;
  const _SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.orangeAccent,
        ),
      ),
    );
  }
}

class _SensitivityItem extends StatelessWidget {
  final String name;
  final String value;

  const _SensitivityItem({required this.name, required this.value});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8.0),
      child: ListTile(
        title: Text(name),
        trailing: Text(
          value,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
