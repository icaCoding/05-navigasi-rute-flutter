import 'package:flutter/material.dart';

class TheCard extends StatelessWidget {
  const TheCard(
      {Key? key,
      required this.imageUrl,
      required this.name,
      required this.price,
      required this.satuan})
      : super(key: key);
  final String imageUrl;
  final String name;
  final String satuan;
  final int price;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Image.asset(
          "assets/images/" + imageUrl,
          width: 200,
          height: 200,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 5),
          child: Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 20),
          child: Text(
            "Rp. " + price.toString() + " / " + satuan.toString(),
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
          ),
        ),
      ],
    );
  }
}
