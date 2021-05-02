import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatefulWidget {
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  //deklarasi variabel
  final txtkoderoti = TextEditingController();
  final txtnamaroti = TextEditingController();
  final txthargaroti = TextEditingController();
  List<Widget> data = [];

  onTambah() {
    setState(() {
      data.add(ListTile(
        leading: Icon(Icons.circle),
        title: Text(txtkoderoti.text),
        subtitle: Text(txtnamaroti.text),
        trailing: Text(txthargaroti.text),
        
      ));
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: new Scaffold(
            appBar: new AppBar(title: Text("TOKO ROTI Laila Novianita 6sia5")),
            body: new ListView(
              children: <Widget>[
                new Container(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      TextField(
                        controller: txtkoderoti,
                        decoration: InputDecoration(hintText: 'KODE ROTI'),
                      ),
                      TextField(
                        controller: txtnamaroti,
                        decoration: InputDecoration(hintText: 'NAMA ROTI'),
                      ),
                      TextField(
                        controller: txthargaroti,
                        decoration: InputDecoration(hintText: 'HARGA ROTI'),
                      ),
                      RaisedButton(color: Colors.red, child: Text("Tambah Data"), onPressed: onTambah),
                    ],
                  ),
                ),
                new Column(
                  // Isi List View
                  children: data,
                )
              ],
            )));
  }
}
