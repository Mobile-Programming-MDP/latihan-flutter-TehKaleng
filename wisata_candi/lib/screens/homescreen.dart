import 'package:flutter/material.dart';
import 'package:wisata_candi/data/candi_data.dart';
import 'package:wisata_candi/widgets/item_card.dart';

class Homescreen extends StatefulWidget {
  const Homescreen ({super.key});
  
  @override
  State<Homescreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO1
      appBar: AppBar(title: const Text('Wisata Candi'),),
      //TODO 2
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        padding: const EdgeInsets.all(8),
        itemCount: candiList.length,
         itemBuilder: (context, index){return const ItemCard();}),
      //TODO 3
    );
  }
}