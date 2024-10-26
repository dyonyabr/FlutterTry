import 'package:flutter/material.dart';
import 'package:voxmedia/pages/settingsPage.dart';

void main() {
  runApp(const VoxMedia());
}

class VoxMedia extends StatelessWidget {
  const VoxMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'VoxMedia', home: Settings());
  }
}
