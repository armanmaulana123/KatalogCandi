import 'package:flutter/material.dart';

class CandiJabung extends StatefulWidget {
  const CandiJabung({Key? key}) : super(key: key);

  @override
  State<CandiJabung> createState() => _CandiJabungState();
}

class _CandiJabungState extends State<CandiJabung> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Candi Jabung (Probolinggo)"),
      ),
    );
  }
}
