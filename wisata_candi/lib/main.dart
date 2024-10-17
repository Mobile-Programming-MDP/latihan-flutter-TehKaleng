import 'package:flutter/material.dart';
import 'package:wisata_candi/detailscreen.dart';

void main() {
  runApp(const MyApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(bubuibub
      home: Detailscreen(),
    );
  }
}