import 'package:flutter/material.dart';
import 'package:candi/DataCandiModel.dart';

class CandiDetail extends StatelessWidget {
  final DataCandiModel dataCandiModel;

  const CandiDetail({Key? key, required this.dataCandiModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(dataCandiModel.nama),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: width,
              height: height * 0.4,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      image: NetworkImage(dataCandiModel.gambar),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Text(
              dataCandiModel.nama,
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Container(
              width: width * 0.9,
              child: Text(
                dataCandiModel.deskripsi,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
    ;
  }
}
