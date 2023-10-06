import 'package:flutter/material.dart';

class MhsSatu extends StatelessWidget {
  final String nama;
  final String nim;
  final String ttl;
  const MhsSatu(
      {super.key, required this.nama, required this.nim, required this.ttl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Mhs'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.person,
              size: 150,
            ),
            Text(
              nama,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              nim,
              style: TextStyle(fontSize: 18),
            ),
            Text(
              ttl,
              style: TextStyle(fontSize: 18),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Kembali'))
          ],
        ),
      ),
    );
  }
}
