import 'package:flutter/material.dart';
import 'package:panucci_ristorante/cardapio.dart';
import 'package:panucci_ristorante/components/highlight_item.dart';

class Hightlights extends StatelessWidget {
  const Hightlights({super.key});

  final List itens = destaques;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return HighlightItem(
            imageURI: itens[index]["image"],
            itemTitle: itens[index]["name"],
            itemPrice: itens[index]["price"],
            itemDescription: itens[index]["description"],
          );
        },
        itemCount: itens.length,
      ),
    );
  }
}
