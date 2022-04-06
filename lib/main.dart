import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdrawer/pages/song.dart';
import 'package:flutterdrawer/pages/album.dart';
import 'package:flutterdrawer/pages/gallery.dart';
import 'package:flutterdrawer/pages/drawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Hello World',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
              title: Text('Belajar drawer'),
              bottom: TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.audiotrack),
                    text: 'Song',
                  ),
                  Tab(
                    icon: Icon(Icons.album),
                    text: 'Album',
                  ),
                  Tab(
                    icon: Icon(Icons.collections),
                    text: 'Gallery',
                  ),
                ],
              )),
          drawer: CustomDrawer(),
          body: TabBarView(
            children: [
              SongPage(),
              AlbumPage(),
              GalleryPage(),
            ],
          ),
        ),
      );
}
