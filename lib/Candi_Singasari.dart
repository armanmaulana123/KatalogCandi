import 'package:flutter/material.dart';

class CandiSingasari extends StatefulWidget {
  const CandiSingasari({Key? key}) : super(key: key);

  @override
  State<CandiSingasari> createState() => _CandiSingasariState();
}

class _CandiSingasariState extends State<CandiSingasari> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Candi Singasari (Malang)"),
      ),
    );
  }
}
