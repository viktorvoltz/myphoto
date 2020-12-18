import 'package:flutter/material.dart';
import 'add_place_screen.dart';
import 'package:provider/provider.dart';
import '../providers/great_places.dart';

class PlacesListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('your places'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(AddPlaceScreen.routeName);
            },
          )
        ],
      ),
      body: Consumer<GreatPlaces>(
        child: Center(
          child: const Text('No places yet'),
        ),
        builder: (ctx, greatplaces, ch) =>
            greatplaces.items.length <= 0 ? ch : ListView.builder(
              itemCount: greatplaces.items.length,
              itemBuilder: (ctx, i){
                return ListTile(
                  leading: CircleAvatar(backgroundImage: FileImage(greatplaces.items[i].image),),
                  title: Text(greatplaces.items[i].title),
                  onTap: (){
                    // Go to detail page ...
                  },
                );
              },
            ),
      ),
    );
  }
}
