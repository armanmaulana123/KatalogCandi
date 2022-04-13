import 'package:candi/Candi_Jabung.dart';
import 'package:candi/Candi_Penataran.dart';
import 'package:candi/Candi_Singasari.dart';
import 'package:flutter/material.dart';

class PageAwal extends StatefulWidget {
  const PageAwal({Key? key}) : super(key: key);

  @override
  State<PageAwal> createState() => _PageAwalState();
}

class _PageAwalState extends State<PageAwal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Katalog Candi"),
      ),
      body: ListView(children: [
        Container(
          margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
          width: 350,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            color: const Color(0xFF9AD0EC),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              splashColor: const Color(0xFFD6E5FA),
              borderRadius: BorderRadius.circular(20),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) {
                    return const CandiPenataran();
                  }),
                );
              },
              child: Center(
                child: Text(
                  "Candi Penataran (Blitar)",
                  style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
          width: 350,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            color: const Color(0xFF9AD0EC),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              splashColor: const Color(0xFFD6E5FA),
              borderRadius: BorderRadius.circular(20),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) {
                    return const CandiSingasari();
                  }),
                );
              },
              child: Center(
                child: Text(
                  "Candi Singasari (Malang)",
                  style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
          width: 350,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            color: const Color(0xFF9AD0EC),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              splashColor: const Color(0xFFD6E5FA),
              borderRadius: BorderRadius.circular(20),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) {
                    return const CandiJabung();
                  }),
                );
              },
              child: Center(
                child: Text(
                  "Candi Jabung (Probolinggo)",
                  style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
