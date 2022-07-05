import 'package:flutter/material.dart';
import 'package:map/widgets/image_input.dart';


class AddPlaceScreen extends StatefulWidget {
  // create a route name.
  static const routeName = '/add-place';

  @override
  State<AddPlaceScreen> createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  final _titleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Add a new location of your choice'),
        ),
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween, //pushes the icon button down
          crossAxisAlignment: CrossAxisAlignment.stretch, //stretches the button horizontally
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(labelText: 'Title'),
                        controller: _titleController,
                      ),
                      SizedBox(height: 10),
                     ImageInput(),
                    ],
                  ),
                ),
              ),
            ),
            RaisedButton.icon(
              icon: Icon(Icons.add),
              label: Text('Add Location'),
              onPressed: () {},
              elevation: 0,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              color: Theme.of(context).accentColor,
            ),
          ],
        ));
  }
}
