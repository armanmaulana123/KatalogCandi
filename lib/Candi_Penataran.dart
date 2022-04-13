import 'package:flutter/material.dart';

class CandiPenataran extends StatefulWidget {
  const CandiPenataran({Key? key}) : super(key: key);

  @override
  State<CandiPenataran> createState() => _CandiPenataranState();
}

class _CandiPenataranState extends State<CandiPenataran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Candi Penataran (Blitar)"),
      ),
    );
  }
}
