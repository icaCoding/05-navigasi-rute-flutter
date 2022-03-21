import 'package:flutter/material.dart';
import 'package:praktikum5/models/item.dart';
import 'package:praktikum5/widgets/card.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
            'Halaman Keterangan Barang\n2031710127 Neha Viranica Nauly'),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: Card(
          child: Container(
              height: 320,
              margin: const EdgeInsets.all(8),
              child: Center(
                child: TheCard(
                    imageUrl: itemArgs.imageUrl,
                    name: itemArgs.name,
                    price: itemArgs.price,
                    satuan: itemArgs.satuan),
              )),
        ),
      ),
    );
  }
}
