import 'package:flutter/material.dart';

import '../modeli/stavka.dart';

class EkranDetalja extends StatefulWidget {
  final Stavka stavka;

  const EkranDetalja({super.key, required this.stavka});

  @override
  State<EkranDetalja> createState() => _EkranDetaljaState();
}

class _EkranDetaljaState extends State<EkranDetalja> {
  @override
  Widget build(BuildContext context) {
    final kupljen = kupljeniTraktori.contains(widget.stavka.naziv);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalji traktora'),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                Icon(widget.stavka.ikona, size: 100),
                const SizedBox(height: 16),
                Text(widget.stavka.naziv, style: const TextStyle(fontSize: 24)),
                const SizedBox(height: 12),
                Text('Godište: ${widget.stavka.godiste}'),
                Text('Snaga: ${widget.stavka.snaga} KS'),
                const SizedBox(height: 16),
                const Text(
                  'Opis:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(widget.stavka.opis),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: kupljen
                        ? null
                        : () {
                            setState(() {
                              kupljeniTraktori.add(widget.stavka.naziv);
                            });
                          },
                    child: Text(kupljen ? 'Kupljen' : 'Kupi'),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Natrag'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
