import 'package:flutter/material.dart';
import 'package:incu/mhs_satu.dart';

class NamaMhs extends StatelessWidget {
  const NamaMhs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Mahasiswa'),
        ),
        body: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MhsSatu(),
                      ));
                },
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
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
                    ],
                  ),
                ),
              ),
              Divider(thickness: 2),
              GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.person,
                        size: 150,
                      ),
                      Text(
                        'Abid Bachtiar',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '220605110149',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'Ponorogo 12 Mei 2001',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(thickness: 2),
              GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.person,
                        size: 150,
                      ),
                      Text(
                        'Nora Desiana',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '220605110147',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'Malang 30 Desember 2002',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
