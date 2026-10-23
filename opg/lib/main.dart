import 'package:flutter/material.dart';

import 'ekrani/ekran_popisa.dart';

void main() {
  runApp(const OpgAplikacija());
}

class OpgAplikacija extends StatelessWidget {
  const OpgAplikacija({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Traktori OPG-a',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: const EkranPopisa(),
    );
  }
}
