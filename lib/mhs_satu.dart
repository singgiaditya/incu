import 'package:flutter/material.dart';

class MhsSatu extends StatelessWidget {
  const MhsSatu({super.key});

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
              'Fajar Triatmojo',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '220605110152',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Malang 23 Desember 2002',
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
