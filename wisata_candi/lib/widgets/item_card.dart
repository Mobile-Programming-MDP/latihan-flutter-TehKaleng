import 'package:flutter/material.dart';
import 'package:wisata_candi/detailscreen.dart';
import 'package:wisata_candi/models/candi.dart';

class ItemCard extends StatelessWidget{
  //TODO 1
  final Candi candi;
  const ItemCard({super.key, required this.candi});

  @override
  Widget build(BuildContext context) {
    //TODO 6
    return InkWell(
      onTap: () {
        Navigator.push(context,
         MaterialPageRoute(
          builder: (context) => Detailscreen(candi: candi)
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)),
        margin: const EdgeInsets.all(4),
        elevation: 1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //TODO 3
            Expanded(
              //TODO 7
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  candi.imageAsset,
                  width: double.infinity,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}