import 'package:flutter/material.dart';

class ListBarang extends StatefulWidget {
  @override
  _ListBarangState createState() => _ListBarangState();
}

class _ListBarangState extends State<ListBarang> {
  int _counter = 0;

  void _tambahBarang() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Barang")
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            ListTile(
              //leading: FlutterLogo(size: 56.0),
              title: Text('Two-line ListTile'),
              subtitle: Text('Here is a second line'),
              trailing: Icon(Icons.more_vert)
            ),
            ListTile(
              //leading: FlutterLogo(size: 56.0),
              title: Text('Two-line ListTile'),
              subtitle: Text('Here is a second line'),
              trailing: Icon(Icons.more_vert)
            )
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _tambahBarang,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}