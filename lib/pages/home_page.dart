import 'package:flutter/material.dart';
import 'package:praktikum5/models/item.dart';
import 'package:praktikum5/widgets/list_view.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<Item> items = [
    Item(
        imageUrl: "mie_goreng.png",
        name: 'Mie Goreng',
        price: 75000,
        satuan: "Dus"),
    Item(
        imageUrl: "abc_jeruk.png",
        name: 'ABC Jeruk',
        price: 15000,
        satuan: "Botol"),
    Item(
        imageUrl: "xtrajoss.png",
        name: 'Extra Joss',
        price: 12000,
        satuan: "Kotak"),
    Item(
        imageUrl: "coca_cola.png",
        name: 'Coca-cola 1.5 Liter',
        price: 14000,
        satuan: "Botol")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Etalase Barang\n2031710127 Neha Viranica Nauly'),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: ListViews(
          items: items,
          page: '/item',
        ),
      ),
    );
  }
}
