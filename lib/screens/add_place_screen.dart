import 'package:flutter/material.dart';

class AddPlaceScreen extends StatefulWidget {
  static const routeName = '/add-place';

  @override
  _AddPlaceScreenState createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add a new place'),
      ),
      body: Column(children: <Widget>[
        Text('user Inputs...'),
        RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.add), label: Text('Add Place'))
      ],),
    );
  }
}