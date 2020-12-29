import 'package:flutter/material.dart';

class LocationInput extends StatefulWidget {
  @override
  _LocationInputState createState() => _LocationInputState();
}

class _LocationInputState extends State<LocationInput> {
  String _previewImageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 170,
          width: double.infinity,
          alignment: Alignment.center,
          child: _previewImageUrl == null
              ? Text(
                  'No Location Chosen',
                  textAlign: TextAlign.center,
                )
              : Image.network(
                  _previewImageUrl,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
        ),
        Row(children: <Widget>[
          FlatButton.icon(
            onPressed: null,
            icon: Icon(Icons.location_on),
            label: Text('current location'),
            textColor: Theme.of(context).primaryColor,
            
          ),
          FlatButton.icon(
            onPressed: null,
            icon: Icon(Icons.map),
            label: Text('Select on Map'),
            textColor: Theme.of(context).primaryColor,
            
          ),
        ])
      ],
    );
  }
}