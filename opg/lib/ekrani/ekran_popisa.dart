import 'package:flutter/material.dart';

import '../modeli/stavka.dart';
import 'ekran_detalja.dart';

class EkranPopisa extends StatelessWidget {
  const EkranPopisa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Traktori OPG-a')),
      body: ListView.builder(
        itemCount: stavke.length,
        itemBuilder: (context, index) {
          final stavka = stavke[index];

          return Card(
            child: ListTile(
              leading: Icon(stavka.ikona),
              title: Text(stavka.naziv),
              subtitle: Text('${stavka.godiste} godište, ${stavka.snaga} KS'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EkranDetalja(stavka: stavka),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
