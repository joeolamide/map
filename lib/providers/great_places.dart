import 'package:flutter/material.dart';

import 'package:map/models/place.dart';

class GreatPlaces with ChangeNotifier {
  //create a list to save some items, make it private.
  List<Place> _items = [];

  //make use of getter to have access to the items.
  List<Place> get items {
    return [..._items];
  }
}