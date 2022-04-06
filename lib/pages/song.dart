import 'package:flutter/material.dart';

class SongPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(child: ListTile(leading: Image.asset('assets/images/songs.jpg'), subtitle: Text('Lorem ipsum dolor sit amet.', style: TextStyle(fontSize: 12.0)), title: Text('Song ${index + 1}', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0))));
        });
  }
}
