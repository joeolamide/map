import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:map/providers/great_places.dart';
import 'package:map/screens/places_list_screen.dart';
import 'package:map/screens/add_place_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => GreatPlaces(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Great Places',
          theme: ThemeData(
            primarySwatch: Colors.indigo,
            accentColor: Colors.amber,
          ),
          home: PlacesListScreen(),
          //creating the route for the screen.
          routes: {
            AddPlaceScreen.routeName: (ctx) => AddPlaceScreen(),
          }),
    );
  }
}
