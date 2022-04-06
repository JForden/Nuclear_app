import 'package:flutter/material.dart';

class Playlists extends StatefulWidget {
  @override
  _PlaylistsState createState() => _PlaylistsState();
}

@override
class _PlaylistsState extends State<Playlists> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('playlist'),
      ),
      body: Center(
        child: Text('playlist'),
      ),
    );
  }
}
