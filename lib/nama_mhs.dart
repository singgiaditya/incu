import 'package:flutter/material.dart';
import 'package:incu/mhs_satu.dart';

class NamaMhs extends StatelessWidget {
  const NamaMhs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List nama = ["Fajar Triatmojo", "Singgi aditya", "Aditya Ramadhan"];
    List nim = ["220605110038", "220605110067", "220605110028"];
    List ttl = [
      "Malang 23 Desember 2002",
      "Pasuruan 28 Oktober 2003",
      "Pasuruan 12 Januari 2003"
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Mahasiswa'),
      ),
      body: ListView.builder(
        itemCount: nama.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MhsSatu(
                          nama: nama[index],
                          nim: nim[index],
                          ttl: ttl[index],
                        ),
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
                        nama[index],
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        nim[index],
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        ttl[index],
                        style: TextStyle(fontSize: 18),
                      ),
                      Divider()
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
