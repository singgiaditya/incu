import 'package:flutter/material.dart';
import 'package:incu/mhs_satu.dart';

class NamaMhs extends StatelessWidget {
  const NamaMhs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List data = [
      {
        "nama": "Fajar triatmojo",
        "nim": "220605110038",
        "ttl": "Malang 23 Desember 2002"
      },
      {
        "nama": "Singgi Aditya",
        "nim": "220605110068",
        "ttl": "Malang 28 Oktober 2003"
      },
      {
        "nama": "Aditya Ramadhan",
        "nim": "220605110067",
        "ttl": "Pasuruan 28 Oktober 2003"
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Mahasiswa'),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MhsSatu(
                          nama: data[index]["nama"],
                          nim: data[index]["nim"],
                          ttl: data[index]["ttl"],
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
                        data[index]["nama"],
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        data[index]["nim"],
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        data[index]["ttl"],
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
