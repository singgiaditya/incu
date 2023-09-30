import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Mhs'),
      ),
      body: Center(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(24),
            child: CircleAvatar(
              radius: 85,
              backgroundColor: Colors.black,
              child: CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/paspoto.jpg'),
              ),
            ),
          ),
          Text(
            'IT Incubation',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: EdgeInsets.all(24),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
              ),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              children: [
                Row(children: [
                  Icon(Icons.email),
                  Text('it.incubation@gmail.com'),
                ]),
                Row(children: [
                  Icon(Icons.location_on_outlined),
                  Text('Malang'),
                ]),
                Row(children: [
                  Icon(Icons.phone),
                  Text('083456776543'),
                ]),
              ],
            ),
          )
        ],
      )),
    );
  }
}
