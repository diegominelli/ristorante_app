import 'package:flutter/material.dart';
import 'package:panucci_ristorante/cardapio.dart';
import 'package:panucci_ristorante/components/highlight_item.dart';

class Hightlights extends StatelessWidget {
  const Hightlights({super.key});

  final List itens = destaques;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: CustomScrollView(
        slivers: <Widget>[
          const SliverToBoxAdapter(
              child: Padding(
            padding: EdgeInsets.only(
              bottom: 16.0,
            ),
            child: Text(
              "Destaques",
              style: TextStyle(
                fontFamily: "Caveat",
                fontSize: 32,
              ),
              textAlign: TextAlign.center,
            ),
          )),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return HighlightItem(
                  imageURI: itens[index]["image"],
                  itemTitle: itens[index]["name"],
                  itemPrice: itens[index]["price"],
                  itemDescription: itens[index]["description"],
                );
              },
              childCount: itens.length,
            ),
          ),
        ],
      ),
    );
  }
}
